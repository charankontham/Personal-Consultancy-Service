/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.addadmin.dao;

import com.pcs.bean.UserDetails;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userregistration.command.UserCommand;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class AddAdminDao {

    private Connection connection;

    public AddAdminDao(Connection connection) {
        this.connection = connection;
    }

    public boolean addAdmin(UserCommand command) throws Exception {
        PreparedStatement pstmt = null;
        try {
            pstmt = connection.prepareStatement("INSERT INTO user_registration(first_name,user_name,password,"
                    + "email,contact_no,crt_date,crt_time,user_type) "
                    + " VALUES(?,?,?,?,?,current_date,current_time,'admin')");
            pstmt.setString(1, command.getUsername());
            pstmt.setString(2, command.getUsername());
            pstmt.setString(3, command.getPassword());
            pstmt.setString(4, command.getEmail());
            pstmt.setString(5, command.getContactno());
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
        }
    }

    public String checkAdminDetailsisAlreadyRegistered(UserCommand command) throws Exception {
        PreparedStatement pstmt = null;
        ResultSet res = null;
        String statusMSg = null;
        try {
            pstmt = connection.prepareStatement("SELECT * FROM user_registration "
                    + "WHERE user_name=? LIMIT 1");
            pstmt.setString(1, command.getUsername());
            res = pstmt.executeQuery();
            if (res.next()) {
                statusMSg = "Someone has the same user name..please try with another user name";
            } else {
                pstmt = connection.prepareStatement("SELECT * FROM user_registration "
                        + "WHERE email=? LIMIT 1");
                pstmt.setString(1, command.getEmail());
                res = pstmt.executeQuery();
                if (res.next()) {
                    statusMSg = "Email is already associated with someother account..please try with another email";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
            DBConnectionMain.closeResultSet(res);
        }
        return statusMSg;
    }
}
