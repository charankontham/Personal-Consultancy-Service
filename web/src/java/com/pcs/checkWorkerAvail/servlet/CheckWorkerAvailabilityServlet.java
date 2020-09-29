/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.checkWorkerAvail.servlet;

import com.google.gson.Gson;
import com.pcs.bean.WorkerDetails;
import com.pcs.checkWorkerAvail.dao.CheckWorkerAvailDao;
import com.pcs.dbconnection.DBConnectionMain;
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
@WebServlet("/check-worker-avail")
public class CheckWorkerAvailabilityServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter pout = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
            String location = request.getParameter("location");
            CheckWorkerAvailDao checkWorkerAvailDao = new CheckWorkerAvailDao(connection);
            boolean status = checkWorkerAvailDao.checkWorkerAvail(location);
            Gson gson = new Gson();
            if (status) {
                pout.println(gson.toJson(new WorkerDetails("Yes")));
            } else {
                pout.println(gson.toJson(new WorkerDetails("No")));
            }
            pout.flush();
            pout.close();
        } catch (Exception e) {
            System.out.println("Exception occured in CheckWorkerAvailabilityServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
