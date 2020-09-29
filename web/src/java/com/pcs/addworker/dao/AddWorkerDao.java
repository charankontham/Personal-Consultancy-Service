/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.addworker.dao;

import com.pcs.bean.WorkerDetails;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userregistration.command.UserCommand;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author User
 */
public class AddWorkerDao {

    private Connection connection;

    public AddWorkerDao(Connection connection) {
        this.connection = connection;
    }

    public boolean addWorker(WorkerDetails workerDetails) throws Exception {
        PreparedStatement pstmt = null;
        try {
            pstmt = connection.prepareStatement("INSERT INTO workers_details(worker_id,worker_name,contact_no,location,status,location_id,"
                    + "crt_date,crt_time) VALUES(?,?,?,?,'Work Pending',?,current_date,current_time)");
            pstmt.setString(1, workerDetails.getWorkerId());
            pstmt.setString(2, workerDetails.getWorkerName());
            pstmt.setString(3, workerDetails.getContactNo());
            pstmt.setString(4, workerDetails.getLocation());
            pstmt.setString(5, workerDetails.getLocationId());
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
