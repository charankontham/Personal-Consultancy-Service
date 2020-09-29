/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.getWorkerLocations.servlet;

import com.google.gson.Gson;
import com.pcs.bean.Locations;
import com.pcs.dbconnection.DBConnectionMain;
import com.pcs.getWorkerLocations.dao.GetWorkerLocationsDao;
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
@WebServlet("/get-worker-locations")
public class GetWorkerLocationsServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter pout = response.getWriter();
        try {
            Gson gson = new Gson();
            connection = new DBConnectionMain().getConnection();
            GetWorkerLocationsDao getWorkerLocationsDao = new GetWorkerLocationsDao(connection);
            List<Locations> locationsList = getWorkerLocationsDao.getLocations();
            request.setAttribute("locationsList", locationsList);
            pout.println(gson.toJson(locationsList));
        } catch (Exception e) {
            System.out.println("Exception occured in GetWorkerLocationsServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
