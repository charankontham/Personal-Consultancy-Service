/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.viewServlet;

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
@WebServlet("/showUserEditPage")
public class ViewUserEditServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter pout = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
            String userId = request.getParameter("userId");
            UserDao userDao = new UserDao(connection);
            UserDetails userDetails = userDao.getUserDetails(Integer.parseInt(userId));
            if (userDetails != null) {
                request.setAttribute("userDetails", userDetails);
                request.getRequestDispatcher("/WEB-INF/jsp/userEdit.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println("Exception occured in UserRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
