/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import model.config.DBConnect;
import model.entity.Admin;

/**
 *
 * @author ADMIN
 */
public class AdminRepository {
    
    public static Admin getLoginAdmin(String email, String password){
        try(Connection conn = DBConnect.getConnection()) {
            
            String query = "Select * from Admin where email = ? and password = ?";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                Admin a = new Admin();
                a.setEmail(rs.getString(1));
                a.setPassword(rs.getString(2));
                return a;
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI LOGIN ADMIN trong AdminRepository------------");
        }
        
        return null;
    }
}
