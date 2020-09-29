/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.userregistration.dao;

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
public class UserDao {

    private Connection connection;

    public UserDao(Connection connection) {
        this.connection = connection;
    }

    public boolean addUser(UserCommand command) throws Exception {
        PreparedStatement pstmt = null;
        try {
            pstmt = connection.prepareStatement("INSERT INTO user_registration(first_name,last_name,user_name,password,"
                    + "email,contact_no,location,gender,crt_date,crt_time,user_type) "
                    + " VALUES(?,?,?,?,?,?,?,?,current_date,current_time,'user')");
            pstmt.setString(1, command.getFirstname());
            pstmt.setString(2, command.getLastname());
            pstmt.setString(3, command.getUsername());
            pstmt.setString(4, command.getPassword());
            pstmt.setString(5, command.getEmail());
            pstmt.setString(6, command.getContactno());
            pstmt.setString(7, command.getLocation());
            pstmt.setString(8, command.getGender());
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
        }
    }

    public UserDetails validateUserDetails(UserCommand command) throws Exception {
        PreparedStatement pstmt = null;
        UserDetails userDetails = null;
        ResultSet res = null;
        try {
            pstmt = connection.prepareStatement("SELECT user_id,user_name,password,user_type,first_name,last_name,gender,email,contact_no FROM user_registration "
                    + "WHERE user_name=? and password=? LIMIT 1");
            pstmt.setString(1, command.getUsername());
            pstmt.setString(2, command.getPassword());
            res = pstmt.executeQuery();
            if (res.next()) {
                userDetails = setUserDetails(res);
            } else {
                pstmt = connection.prepareStatement("SELECT user_id,user_name,email,password,user_type,first_name,last_name,gender,email,contact_no FROM user_registration "
                        + "WHERE email=? and password=? LIMIT 1");
                pstmt.setString(1, command.getUsername());
                pstmt.setString(2, command.getPassword());
                res = pstmt.executeQuery();
                if (res.next()) {
                    userDetails = setUserDetails(res);
                } else {
                    pstmt = connection.prepareStatement("SELECT user_id,user_name,contact_no,password,user_type,first_name,last_name,gender,email,contact_no FROM user_registration "
                            + "WHERE contact_no=? and password=? LIMIT 1");
                    pstmt.setString(1, command.getUsername());
                    pstmt.setString(2, command.getPassword());
                    res = pstmt.executeQuery();
                    if (res.next()) {
                        userDetails = setUserDetails(res);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
            DBConnectionMain.closeResultSet(res);
        }
        return userDetails;
    }

    public UserDetails getUserDetails(int userId) throws Exception {
        PreparedStatement pstmt = null;
        UserDetails userDetails = null;
        ResultSet res = null;
        try {
            pstmt = connection.prepareStatement("SELECT user_id,user_name,user_type,first_name,last_name,gender,email,contact_no,gender FROM user_registration "
                    + "WHERE user_id=? LIMIT 1");
            pstmt.setInt(1, userId);
            res = pstmt.executeQuery();
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
                userDetails.setGender(res.getString("gender"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
            DBConnectionMain.closeResultSet(res);
        }
        return userDetails;
    }

    public boolean updateUserDetails(UserCommand command) throws Exception {
        PreparedStatement pstmt = null;
        boolean status = false;
        ResultSet res = null;
        try {
            pstmt = connection.prepareStatement("SELECT * FROM user_registration "
                    + "WHERE user_id=? LIMIT 1");
            pstmt.setInt(1, command.getUserid());
            res = pstmt.executeQuery();
            if (res.next()) {
                pstmt = connection.prepareStatement("UPDATE user_registration SET user_name=?,password=?,"
                        + "email=?,contact_no=?,updated_date=current_date,updated_time=current_time WHERE user_id=?");
                pstmt.setString(1, command.getUsername());
                pstmt.setString(2, command.getPassword());
                pstmt.setString(3, command.getEmail());
                pstmt.setString(4, command.getContactno());
                pstmt.setInt(5, command.getUserid());
                pstmt.executeUpdate();
                status = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
            DBConnectionMain.closeResultSet(res);
        }
        return status;
    }

    public boolean saveFeedbackDetails(String userId, String feedbackMsg, String rating) throws Exception {
        PreparedStatement pstmt = null;
        boolean status = false;
        try {
            pstmt = connection.prepareStatement("UPDATE user_registration SET feedback_msg=?,user_rating=? WHERE user_id=?");
            pstmt.setString(1, feedbackMsg);
            pstmt.setString(2, rating);
            pstmt.setString(3, userId);
            pstmt.executeUpdate();
            status = true;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
        }
        return status;
    }

    public List<UserDetails> getUserFeedbackDetails() throws Exception {
        PreparedStatement pstmt = null;
        UserDetails userDetails = null;
        ResultSet res = null;
        List<UserDetails> userDetailsList = new ArrayList<UserDetails>();
        try {
            pstmt = connection.prepareStatement("SELECT * FROM user_registration WHERE feedback_msg IS NOT NULL AND user_rating IS NOT NULL");
            res = pstmt.executeQuery();
            Integer sno = 1;
            while (res.next()) {
                userDetails = new UserDetails();
                userDetails.setSno(sno.toString());
                userDetails.setUserId(res.getString("user_id"));
                userDetails.setUserName(res.getString("first_name") + " " + res.getString("last_name"));
                userDetails.setFeedbackMsg(res.getString("feedback_msg") != null ? res.getString("feedback_msg") : "NA");
                userDetails.setUserRating(res.getString("user_rating") != null ? res.getString("user_rating") : "NA");
                userDetailsList.add(userDetails);
                sno++;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closePrepareStatement(pstmt);
            DBConnectionMain.closeResultSet(res);
        }
        return userDetailsList;
    }

    public String checkUserDetailsisAlreadyRegistered(UserCommand command) throws Exception {
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
                } else {
                    pstmt = connection.prepareStatement("SELECT * FROM user_registration "
                            + "WHERE first_name=? LIMIT 1");
                    pstmt.setString(1, command.getFirstname());
                    res = pstmt.executeQuery();
                    if (res.next()) {
                        statusMSg = "Someone has the same name..please try with another name";
                    }
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

    private UserDetails setUserDetails(ResultSet res) throws SQLException {
        UserDetails userDetails = new UserDetails();
        userDetails.setUserId(res.getString("user_id"));
        userDetails.setUserName(res.getString("user_name"));
        userDetails.setUserType(res.getString("user_type"));
        userDetails.setuFirstName(res.getString("first_name"));
        userDetails.setuLastName(res.getString("last_name"));
        userDetails.setGender(res.getString("gender"));
        userDetails.setEmail(res.getString("email"));
        userDetails.setContactNo(res.getString("contact_no"));
        return userDetails;
    }

}
