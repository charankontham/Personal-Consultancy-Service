/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.workerdetails.servlet;

import com.pcs.bean.WorkerDetails;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.workerdetails.dao.WorkerDetailsDao;
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
@WebServlet("/workerDetails")
public class WorkerDetailsServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        try {
            connection = new DBConnectionMain().getConnection();
            String userId = request.getParameter("userId");
            String action = request.getParameter("action");
            WorkerDetailsDao workerDetailsDao = new WorkerDetailsDao(connection);
            List<WorkerDetails> workersList = workerDetailsDao.getWorkerDetails();
//            UserDetails userDetails = workerDetailsDao.getUserDetails(Integer.parseInt(userId));
            if (!workersList.isEmpty()) {
                request.setAttribute("workersList", workersList);
                request.setAttribute("action", action);
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
