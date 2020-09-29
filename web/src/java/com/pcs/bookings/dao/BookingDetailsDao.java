/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.bookings.dao;

import com.pcs.bean.UserDetails;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userservicedetails.UserServiceDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

/**
 *
 * @author User
 */
public class BookingDetailsDao {

    private Connection connection;

    public BookingDetailsDao(Connection connection) {
        this.connection = connection;
    }

    public List<UserServiceDetails> getUserServicedetails(int userId) throws Exception {
        PreparedStatement pstmt = null;
        boolean status = false;
        UserServiceDetails serviceDetails = null;
        List<UserServiceDetails> list = new ArrayList<UserServiceDetails>();
        try {
            if (userId > 0) {
                pstmt = connection.prepareStatement("SELECT user_id,user_name,ticket_id,issue,issue_desc,payment_mode,address,status,"
                        + "crt_date,crt_time FROM user_service_details"
                        + " WHERE user_id=?");
                pstmt.setInt(1, userId);
            } else {
                pstmt = connection.prepareStatement("SELECT user_id,user_name,ticket_id,issue,issue_desc,payment_mode,address,status,"
                        + "crt_date,crt_time FROM user_service_details");
            }
            ResultSet resultSet = pstmt.executeQuery();
            Integer sno = 1;
            while (resultSet.next()) {
                serviceDetails = new UserServiceDetails();
                serviceDetails.setSno(sno.toString());
                serviceDetails.setTokenId(resultSet.getString("ticket_id"));
                serviceDetails.setPaymentMode(resultSet.getString("payment_mode"));
                serviceDetails.setStatus(resultSet.getString("status"));
                //
                serviceDetails.setUserId(resultSet.getString("user_id"));
                serviceDetails.setUserName(resultSet.getString("user_name"));
                serviceDetails.setIssue(resultSet.getString("issue"));
                serviceDetails.setIssueDesc(resultSet.getString("issue_desc"));
                List<String> addressList = new ArrayList<String>();
                StringTokenizer st = new StringTokenizer(resultSet.getString("address"), "^^^");
                while (st.hasMoreTokens()) {
                    addressList.add(String.valueOf(st.nextToken()));
                }
                serviceDetails.setHouseNo(addressList.get(0));
                serviceDetails.setStreetNo(addressList.get(1));
                serviceDetails.setPincode(addressList.get(2));
                serviceDetails.setAddress(addressList.get(0) + " " + addressList.get(1) + " " + addressList.get(2));
                serviceDetails.setTransactionDate(resultSet.getString("crt_date"));
                serviceDetails.setTransactionTime(resultSet.getString("crt_time"));
                list.add(serviceDetails);
                sno++;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
        }
        return list;
    }

    public UserDetails getUserDetails(int userId) throws Exception {
        PreparedStatement pstmt = null;
        UserDetails userDetails = null;
        try {
            pstmt = connection.prepareStatement("SELECT * FROM user_registration "
                    + "WHERE user_id=? LIMIT 1");
            pstmt.setInt(1, userId);
            ResultSet res = pstmt.executeQuery();
            if (res.next()) {
                userDetails = new UserDetails();
                userDetails.setUserId(res.getString("user_id"));
                userDetails.setUserName(res.getString("user_name"));
                userDetails.setUserType(res.getString("user_type"));
                userDetails.setuFirstName(res.getString("first_name"));
                userDetails.setuLastName(res.getString("last_name"));
                userDetails.setGender(res.getString("gender"));
                userDetails.setEmail(res.getString("email"));
                userDetails.setContactNo(res.getString("contact_no"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
        }
        return userDetails;
    }
}
