/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.userservicesave.servlet;

import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userservicedetails.UserServiceDetails;
import com.pcs.userservicesave.dao.UserServiceSaveDao;
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
@WebServlet("/saveUserService")
public class UserServiceSaveServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter out = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
            UserServiceSaveDao saveDao = new UserServiceSaveDao(connection);
            UserServiceDetails serviceDetails = new UserServiceDetails();
            //
            serviceDetails.setUserId(request.getParameter("userId"));
            serviceDetails.setUserName(request.getParameter("userName"));
            serviceDetails.setPaymentMode("1".equals(request.getParameter("paymentMode")) ? "Online payment" : "Cod");
            serviceDetails.setAddress(request.getParameter("t1") + "^^^" + request.getParameter("t2") + "^^^" + request.getParameter("t3") + "^^^");
            serviceDetails.setIssueDesc(request.getParameter("t5").trim());
            serviceDetails.setServiceDate(request.getParameter("serviceDate"));
            serviceDetails.setTicketId("service000" + request.getParameter("userId"));
            serviceDetails.setStatus("Pending");
            serviceDetails.setIssueType(request.getParameter("issueType"));
            serviceDetails.setServiceType(request.getParameter("serviceType"));

            boolean status = saveDao.saveUserServiceDetails(serviceDetails);
            if (status) {
                request.setAttribute("status", true);
                request.getRequestDispatcher("/WEB-INF/jsp/userpage.jsp").forward(request, response);
            } else {
                request.setAttribute("status", false);
                request.getRequestDispatcher("login.jsp").include(request, response);
            }
        } catch (Exception e) {
            System.out.println("Exception occured in UserRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }

}
