/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.login.servlet;

import com.pcs.bean.UserDetails;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userregistration.dao.UserDao;
import com.pcs.userregistration.command.UserCommand;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet("/user-login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter out = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
//            connection.setAutoCommit(false);
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            //Setting all the values to command object
            UserCommand command = new UserCommand();
            command.setUsername(username);
            command.setPassword(password);
            //
            UserDao userDao = new UserDao(connection);
            UserDetails userDetails = userDao.validateUserDetails(command);
            HttpSession session = request.getSession();
            if (userDetails != null) {
                session.setAttribute("userId", userDetails.getUserId());
                session.setAttribute("userType", userDetails.getUserType());
                session.setAttribute("email", userDetails.getEmail());
                session.setAttribute("contactNo", userDetails.getContactNo());
                if ("male".equalsIgnoreCase(userDetails.getGender())) {
                    session.setAttribute("userName", "Mr." + userDetails.getuFirstName() + " " + (userDetails.getuLastName() != null ? userDetails.getuLastName() : ""));
                } else {
                    session.setAttribute("userName", "Ms." + userDetails.getuFirstName() + " " + (userDetails.getuLastName() != null ? userDetails.getuLastName() : ""));
                }
                if ("user".equalsIgnoreCase(userDetails.getUserType())) {
                    request.getRequestDispatcher("/WEB-INF/jsp/userpage.jsp").forward(request, response);
                } else if ("admin".equalsIgnoreCase(userDetails.getUserType())) {
                    request.getRequestDispatcher("/WEB-INF/jsp/adminPage.jsp").forward(request, response);
                }
            } else {
                out.println("incorrect username and password,try again!");
                request.setAttribute("statusMsg", "incorrect username and password, please try again!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println("Exception occured in UserRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }

}
