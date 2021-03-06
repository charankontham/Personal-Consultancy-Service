/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.adminreg.servlet;

import com.pcs.addadmin.dao.AddAdminDao;
import com.pcs.dbconnection.DBConnectionMain;
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
@WebServlet("/add-admin")
public class AddAdminServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter out = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
//            String firstname = request.getParameter("firstname");
//            String lastname = request.getParameter("lastname");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String contactno = request.getParameter("contactno");
//            String location = request.getParameter("location");
//            String gender = request.getParameter("gender");
            //Setting all the values to command object
            UserCommand command = new UserCommand();
//            command.setFirstname(firstname);
//            command.setLastname(lastname);
            command.setUsername(username);
            command.setPassword(password);
            command.setEmail(email);
            command.setContactno(contactno);
//            command.setLocation(location);
//            command.setGender(gender);
            //
            AddAdminDao addAdminDao = new AddAdminDao(connection);
            String statusMsg = addAdminDao.checkAdminDetailsisAlreadyRegistered(command);
            if (statusMsg == null) {
                boolean status = addAdminDao.addAdmin(command);
                if (status) {
                    request.getRequestDispatcher("/login.jsp").forward(request, response);
                } else {
                    request.setAttribute("statusMsg", statusMsg);
                    out.println("sorry!! admin not added..something went wrong");
                    request.getRequestDispatcher("html/addNewAdmin.jsp").forward(request, response);
                }
            } else {
                out.println(statusMsg);
                request.setAttribute("statusMsg", statusMsg);
                request.getRequestDispatcher("/WEB-INF/jsp/addNewAdmin.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println("Exception occured in UserRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
            request.getRequestDispatcher("/WEB-INF/jsp/addNewAdmin.jsp").forward(request, response);
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
