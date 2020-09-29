/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcs.getWorkerLocations.dao;

import com.pcs.bean.Locations;
import com.pcs.dbconnection.DBConnectionMain;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class GetWorkerLocationsDao {

    private Connection connection;

    public GetWorkerLocationsDao(Connection connection) {
        this.connection = connection;
    }

    public List<Locations> getLocations() throws Exception {
        PreparedStatement pstmt = null;
        ResultSet res = null;
        List<Locations> locationsList = new ArrayList<Locations>();
        Locations location = null;
        try {
            pstmt = connection.prepareStatement("select location_id,location from locations");
            res = pstmt.executeQuery();
            while (res.next()) {
                location = new Locations();
                location.setLocationId(res.getString("location_id"));
                location.setLocation(res.getString("location"));
                locationsList.add(location);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            DBConnectionMain.closeResultSet(res);
            DBConnectionMain.closePrepareStatement(pstmt);
        }
        return locationsList;
    }
}
