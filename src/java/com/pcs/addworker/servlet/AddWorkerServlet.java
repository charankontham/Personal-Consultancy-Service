/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.addworker.servlet;

import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.userregistration.command.UserCommand;
import com.pcs.addworker.dao.AddWorkerDao;
import com.pcs.bean.WorkerDetails;
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
@WebServlet("/add-worker")
public class AddWorkerServlet extends HttpServlet {
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
//        PrintWriter out = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
            String workerName = request.getParameter("workerName");
            String location = request.getParameter("location");
            String workerId = request.getParameter("workerId");
            String contactno = request.getParameter("contactno");
            //Setting all the values to command object
            WorkerDetails workerDetails = new WorkerDetails();
            workerDetails.setContactNo(contactno);
            workerDetails.setWorkerName(workerName);
            workerDetails.setLocation(location);
            workerDetails.setWorkerId(workerId);
            workerDetails.setLocationId("1");
            //
            AddWorkerDao workerRegDao = new AddWorkerDao(connection);
            boolean status = workerRegDao.addWorker(workerDetails);
//            if (status) {
            request.getRequestDispatcher("/WEB-INF/jsp/adminPage.jsp").forward(request, response);
//            }
        } catch (Exception e) {
            System.out.println("Exception occured in WorkerRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
