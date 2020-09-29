/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.userrequests;

import com.pcs.bookings.dao.BookingDetailsDao;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userservicedetails.UserServiceDetails;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/userRequestDetails")
public class GetUserRequestDetailsServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter out = response.getWriter();
        try {
            String statusMsg = null;
            connection = new DBConnectionMain().getConnection();
            int userId = 0;
            String userName = request.getParameter("userName");
            String action = request.getParameter("action");
            BookingDetailsDao bdd = new BookingDetailsDao(connection);
            List<UserServiceDetails> list = bdd.getUserServicedetails(userId);
//            UserDetails userDetails = bdd.getUserDetails(Integer.parseInt(userId));
            if (!list.isEmpty()) {
                request.setAttribute("list", list);
                request.setAttribute("action", action);

//                request.setAttribute("userId", userId);
//                request.setAttribute("userName", userName);
            }
//            if (userDetails != null) {
//                request.setAttribute("userId", userDetails.getUserId());
//                request.setAttribute("userName", userDetails.getuFirstName() + " " + userDetails.getuLastName());
//            }
            request.getRequestDispatcher("/WEB-INF/jsp/adminPage.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Exception occured in UserRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
