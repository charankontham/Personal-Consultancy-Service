/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.checkWorkerAvail.dao;

import com.pcs.dbconnection.DBConnectionMain;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author User
 */
public class CheckWorkerAvailDao {

    private Connection connection;

    public CheckWorkerAvailDao(Connection connection) {
        this.connection = connection;
    }

    public boolean checkWorkerAvail(String location) throws Exception {
        PreparedStatement pstmt = null;
        ResultSet res = null;
        try {
            pstmt = connection.prepareStatement("select 1 from workers_details where location_id=?");
            pstmt.setString(1, location);
            res = pstmt.executeQuery();
            if (res.next()) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closeResultSet(res);
            DBConnectionMain.closePrepareStatement(pstmt);
        }
    }

}
