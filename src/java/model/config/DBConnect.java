/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author ADMIN
 */
public interface DBConnect {
    
    
    public static Connection getConnection() throws ClassNotFoundException{
         Connection con=null;
        String dbUser="sa";
        String dbPassword="12345";
        String port="1433";
        String ServerName="localhost";
        String dbName="SWP";
        String driverClass ="com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String url = "jdbc:sqlserver://" + ServerName +";databaseName=" +dbName+
                     ";encrypt=false;trustServerCertificate=false;loginTimeout=30";
        try{
            Class.forName(driverClass);
            con = DriverManager.getConnection(url,dbUser,dbPassword);
        }catch(SQLException ex){
            System.out.println(ex + "error");
        }
        return con;
    
    }   
    
//    Test connection
    public static void main(String[] args) {
        try{
            if(DBConnect.getConnection()!=null) System.out.println("Connect successfully!");
            else System.out.println("Connect failed!");
        } catch (Exception ex) {
            System.out.println(ex); 
            System.out.println("Error at model.DBContext.DBContext().getConnertion()");
        }        
    }
}
