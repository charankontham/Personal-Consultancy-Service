package com.pcs.dbconnection;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.Context;
import javax.naming.InitialContext;
import org.apache.commons.dbcp.BasicDataSource;

public class DBConnectionMain {
  Connection sqlconn;
   BasicDataSource ds;
   public DBConnectionMain(){
       sqlconn = null;
       ds = null;
       Context initCtx =null;
       Context envCtx =null;
       try{
           if(ds == null){
               initCtx = new InitialContext();
               envCtx = (Context)initCtx.lookup("java:comp/env");
               ds = (BasicDataSource)envCtx.lookup("jdbc/MainDB");
           }
       }
       catch(Exception exp){
           System.out.println((new StringBuilder("Exception in DBConnection.java - ConnectionPool")).append(exp).toString());
       }
       finally{
    	   initCtx=null;
    	   envCtx=null;
       }
   }
   public Connection getConnection(){
	   try{
		   sqlconn=null;
		   synchronized (ds){ 
		   if(ds.getNumActive()>=30||ds.getNumIdle()>=30){
        		   System.out.println("ConnectionPoolActive MainDB::" + ds.getNumActive());
        		   System.out.println("ConnectionPoolIdle MainDB::" + ds.getNumIdle());  
        	  } 
        	   sqlconn = ds.getConnection();
        	   sqlconn.setReadOnly(false);
           }
		   return sqlconn;
	   }
	   catch (Exception e) {
		   System.out.println("Exception occured in DBConnectionMain(getConnection) ::"+e.getMessage());
		   return null; 
	   }
	   finally{ 
		   sqlconn=null; 
		   //ds=null;
	   }
   	}
   
    public static void closeDbMainConnection(Connection con){
        try{
            if(con!=null)
                con.close();
            con=null;
        }catch(Exception e){
           // System.out.println("Exception occured in DBConnectionMain(closeDbMainConnection) ::"+e.getMessage());
        }
    }
    public static void closePrepareStatement(PreparedStatement pstmt){
        try{
            if(pstmt!=null)
                pstmt.close();
            pstmt=null;
        }catch(Exception e){
            System.out.println("Exception occured in DBConnectionMain(closePrepareStatement) ::"+e.getMessage());
        }
    }
    public static void closeResultSet(ResultSet res){
        try{
            if(res!=null)
                res.close();
            res=null;
        }catch(Exception e){
            System.out.println("Exception occured in DBConnectionMain(closeResultSet) ::"+e.getMessage());
        }
    }
    
}