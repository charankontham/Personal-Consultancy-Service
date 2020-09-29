/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.checkWorkersAvai.servlet;

import com.pcs.checkWorkersAvai.dao.CheckWorkersAvailableDao;
import com.pcs.dbconnection.DBConnectionMain;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.me.JSONObject;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 *
 * @author User
 */
@WebServlet("/checkWorkersAvailable")
public class CheckWorkersAvailableServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        PrintWriter out = response.getWriter();
        try {
            connection = new DBConnectionMain().getConnection();
            String location = request.getParameter("location");
            CheckWorkersAvailableDao workersAvailableDao = new CheckWorkersAvailableDao(connection);
            boolean status = workersAvailableDao.checkIfWorkersAvailable(location.trim().toLowerCase());
            JSONObject jSONObject = new JSONObject();
            if (status) {
                request.setAttribute("status", "true");
                jSONObject.put("status", "true");
            } else {
                request.setAttribute("status", "false");
                jSONObject.put("status", "false");
            }   
            out.println(jSONObject);
            response.getWriter().write(jSONObject.toString());
            response.getWriter().write(location);
            //
            Gson gson = new GsonBuilder().setPrettyPrinting()
                    .create();
            String json = gson.toJson(jSONObject);
            response.getWriter().write(json);
            request.getRequestDispatcher("/WEB-INF/jsp/userpage.jsp").include(request, response);
        } catch (Exception e) {
            System.out.println("Exception occured in UserRegistrationServlet:service()" + e.getMessage());
            e.printStackTrace();
        } finally {
            DBConnectionMain.closeDbMainConnection(connection);
        }
    }
}
