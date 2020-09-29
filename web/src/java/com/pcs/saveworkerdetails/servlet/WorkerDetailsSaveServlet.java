/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.saveworkerdetails.servlet;

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
@WebServlet("/saveWorker")
public class WorkerDetailsSaveServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        try {
            connection = new DBConnectionMain().getConnection();
            String action = request.getParameter("action");
            WorkerDetails workerDetails = new WorkerDetails();
            workerDetails.setContactNo(request.getParameter("contactNo"));
            workerDetails.setLocation(request.getParameter("location"));
            workerDetails.setWorkerName(request.getParameter("workerName"));
            workerDetails.setWorkerId(request.getParameter("workerId"));
            WorkerDetailsDao workerDetailsDao = new WorkerDetailsDao(connection);
            boolean status = workerDetailsDao.saveWorker(workerDetails);
            request.getRequestDispatcher("/WEB-INF/jsp/adminPage.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Exception occured in WorkerDetailsSaveServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
