/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.useredit.servlet;

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

/**
 *
 * @author User
 */
@WebServlet("/saveUserEditDetails")
public class UserEditServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter pout = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
            UserDao userDao = new UserDao(connection);
            UserCommand command = new UserCommand();
            command.setUserid(Integer.parseInt(request.getParameter("userId")));
            command.setUsername(request.getParameter("userName"));
            command.setPassword(request.getParameter("password"));
            command.setEmail(request.getParameter("email"));
            command.setContactno(request.getParameter("contactNo"));
            boolean status = userDao.updateUserDetails(command);
            if (status) {
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
