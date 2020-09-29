/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.userservicesave.dao;

import com.pcs.bean.UserDetails;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userservicedetails.UserServiceDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author User
 */
public class UserServiceSaveDao {

    private Connection connection;

    public UserServiceSaveDao(Connection connection) {
        this.connection = connection;
    }

    public boolean saveUserServiceDetails(UserServiceDetails serviceDetails) throws Exception {
        PreparedStatement pstmt = null;
        ResultSet res = null;
        String firstName = null, lastName = null;
        try {
            pstmt = connection.prepareStatement("SELECT first_name,last_name FROM user_registration WHERE user_id=? LIMIT 1");
            pstmt.setString(1, serviceDetails.getUserId());
            res = pstmt.executeQuery();
            if (res.next()) {
                firstName = res.getString("first_name");
                lastName = res.getString("last_name");
            }
            pstmt = connection.prepareStatement("INSERT INTO user_service_details(user_id,user_name,payment_mode,address,issue_desc,"
                    + "service_date,ticket_id,status,crt_date,crt_time,issue,service_type)"
                    + " VALUES(?,?,?,?,?,?,?,?,current_date,current_time,?,?)");
            pstmt.setString(1, serviceDetails.getUserId());
            pstmt.setString(2, serviceDetails.getUserName());
            pstmt.setString(3, serviceDetails.getPaymentMode());
            pstmt.setString(4, serviceDetails.getAddress());
            pstmt.setString(5, serviceDetails.getIssueDesc());
            pstmt.setString(6, serviceDetails.getServiceDate());
            pstmt.setString(7, serviceDetails.getTicketId());
            pstmt.setString(8, serviceDetails.getStatus());
            pstmt.setString(9, serviceDetails.getIssueType());
            pstmt.setString(10, serviceDetails.getServiceType());
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
        }
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
