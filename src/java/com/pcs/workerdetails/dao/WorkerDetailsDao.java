/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.workerdetails.dao;

import com.pcs.bean.UserDetails;
import com.pcs.bean.WorkerDetails;
import com.pcs.dbconnection.DBConnectionMain;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class WorkerDetailsDao {

    private Connection connection;

    public WorkerDetailsDao(Connection connection) {
        this.connection = connection;
    }

    public List<WorkerDetails> getWorkerDetails() throws Exception {
        PreparedStatement pstmt = null;
        WorkerDetails workerDetails = null;
        List<WorkerDetails> list = new ArrayList<WorkerDetails>();
        try {
            pstmt = connection.prepareStatement("SELECT worker_name,worker_id,contact_no,location,"
                    + "email_id,status,crt_date,crt_time FROM workers_details");
            ResultSet resultSet = pstmt.executeQuery();
            Integer sno = 1;
            while (resultSet.next()) {
                workerDetails = new WorkerDetails();
                workerDetails.setSno(sno.toString());
                workerDetails.setWorkerId(resultSet.getString("worker_id"));
                workerDetails.setWorkerName(resultSet.getString("worker_name"));
                workerDetails.setContactNo(resultSet.getString("contact_no"));
                workerDetails.setTaskStatus(resultSet.getString("status"));
                workerDetails.setLocation(resultSet.getString("location"));
                workerDetails.setCreatedDate(resultSet.getString("crt_date"));
                workerDetails.setCreatedTime(resultSet.getString("crt_time"));
                list.add(workerDetails);
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

    public boolean saveWorker(WorkerDetails workerDetails) throws Exception {
        PreparedStatement pstmt = null;
        try {
            pstmt = connection.prepareStatement("INSERT INTO workers_details(worker_id,worker_name,contact_no,location,"
                    + "email_id,status,crt_date,crt_time) VALUES(?,?,?,?,?,current_date,current_time)");
            pstmt.setString(1, workerDetails.getWorkerId());
            pstmt.setString(2, workerDetails.getWorkerName());
            pstmt.setString(3, workerDetails.getContactNo());
            pstmt.setString(4, workerDetails.getLocation());
            pstmt.setString(5, workerDetails.getEmailId());
            pstmt.setString(6, "Pending");
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
        }
    }
}
