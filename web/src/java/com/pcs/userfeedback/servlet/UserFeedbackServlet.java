/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.userfeedback.servlet;

import com.pcs.bean.UserDetails;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userregistration.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet("/user-feedback")
public class UserFeedbackServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter out = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
            String userId = request.getParameter("userId");
            String feedbackMsg = request.getParameter("feedbackMsg");
            String rating = request.getParameter("rating");
            UserDao userDao = new UserDao(connection);
            boolean status = userDao.saveFeedbackDetails(userId, feedbackMsg, rating);
            UserDetails userDetails = userDao.getUserDetails(Integer.parseInt(userId));
            request.setAttribute("userId", userDetails.getUserId());
            if ("male".equalsIgnoreCase(userDetails.getGender())) {
                request.setAttribute("userName", "Mr." + userDetails.getuFirstName() + " " + userDetails.getuLastName());
            } else {
                request.setAttribute("userName", "Ms." + userDetails.getuFirstName() + " " + userDetails.getuLastName());
            }
            if (status) {
                request.getRequestDispatcher("/WEB-INF/jsp/userpage.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println("Exception occured in UserRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
