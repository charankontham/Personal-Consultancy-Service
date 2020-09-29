/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.getuserfeedbackdtls.servlet;

import com.pcs.bean.UserDetails;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userregistration.dao.UserDao;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet("/user-feeback-details")
public class GetUserFeedbackDetailsServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        try {
            connection = new DBConnectionMain().getConnection();
            String action = request.getParameter("action");
            UserDao userDao = new UserDao(connection);
            List<UserDetails> userDetailsList = userDao.getUserFeedbackDetails();
            if (!userDetailsList.isEmpty()) {
                request.setAttribute("userFeedbackDtlsList", userDetailsList);
                request.setAttribute("action", action);
            }
            request.getRequestDispatcher("/WEB-INF/jsp/adminPage.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Exception occured in UserRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
