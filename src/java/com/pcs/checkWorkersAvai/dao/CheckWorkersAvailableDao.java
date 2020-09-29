/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.checkWorkersAvai.dao;

import com.pcs.dbconnection.DBConnectionMain;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author User
 */
public class CheckWorkersAvailableDao {

    private Connection connection;

    public CheckWorkersAvailableDao(Connection connection) {
        this.connection = connection;
    }

    public boolean checkIfWorkersAvailable(String location) throws Exception {
        PreparedStatement pstmt = null;
        boolean status = false;
        try {
            pstmt = connection.prepareStatement("SELECT 1 FROM workers_details "
                    + "WHERE location=? LIMIT 1");
            pstmt.setString(1, location);
            if (pstmt.executeQuery().next()) {
                status = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
        }
        return status;
    }

}
