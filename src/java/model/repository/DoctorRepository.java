/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.config.DBConnect;
import model.entity.Doctor;

/**
 *
 * @author ADMIN
 */
public class DoctorRepository {
    
    public static int generateID(){
        try(Connection conn = DBConnect.getConnection()) {
             String query = "SELECT MAX(dId) AS max_id FROM Doctor";
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery();
              if (rs.next()) {
                int maxId = rs.getInt("max_id");                
                // Tăng giá trị ID lớn nhất lên 1 để tạo ID mới
                int newId = maxId + 1;                
                return newId;
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI generateID trong PatientRepository-----------");
        }
        return 0;
    }
    
    public static void doctorRegister(Doctor d) {
        try (Connection conn = DBConnect.getConnection()) {
            String query = "Insert into Doctor (dId, fullName, dateOfBirth, email, phone, specialist, password) values (?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, d.getdId());
            ps.setString(2, d.getFullName());
            ps.setString(3, d.getDateOfBirth());
            ps.setString(4, d.getEmail());
            ps.setString(5, d.getPhone());
            ps.setString(6, d.getSpecialist());
            ps.setString(7, d.getPassword()); 
            ps.executeUpdate();
            conn.commit();
            ps.close();
            conn.close();

        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI DANG KY DOCTOR trong DoctorRepository------------");
        }
    }

    public static Doctor doctorLogin(String email, String password) {
        try (Connection conn = DBConnect.getConnection()) {
            String query = "Select * from Doctor where email = ? and password = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Doctor d = new Doctor();
                d.setdId(rs.getInt(1));
                d.setFullName(rs.getString(2));
                d.setDateOfBirth(rs.getString(3));
                d.setEmail(rs.getString(4));
                d.setPhone(rs.getString(5));
                d.setSpecialist(rs.getString(6));
                d.setPassword(rs.getString(7));
                return d;
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI LOGIN DOCTOR trong DoctorRepository------------");
        }
        return null;
    }

    public static List<Doctor> getAllDoctor() {
        List<Doctor> docList = new ArrayList<>();
        try (Connection conn = DBConnect.getConnection()) {

            String query = "Select * from Doctor";

            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int dId = rs.getInt("dId");
                String fullName = rs.getString("fullName");
                String dob = rs.getString("dateOfBirth");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String specialist = rs.getString("specialist");
                Doctor d = new Doctor(dId, fullName, dob, specialist, email, phone);
                docList.add(d);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI LAY LIST DOCTOR trong DoctorRepository------------");
        }
        return docList;
    }

    public static void deleteDoc(int dId) {
        try (Connection conn = DBConnect.getConnection()) {
            String query = "Delete from Doctor WHERE dId = ?\n";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, dId);
            ps.executeQuery();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI Delete DOCTOR trong DoctorRepository------------");
        }
    }

    public static void updateDoc(Doctor d) throws ClassNotFoundException {

        try (Connection conn = DBConnect.getConnection()) {

            String query = "update Doctor \n"
                    + "set fullName = ?, dateOfBirth = ?, email = ?, phone = ?, specialist = ?, password = ? where dId = ?";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(8, d.getdId());
            ps.setString(1, d.getFullName());
            ps.setString(2, d.getDateOfBirth());
            ps.setString(3, d.getEmail());
            ps.setString(4, d.getPhone());
            ps.setString(5, d.getSpecialist());
            ps.setString(6, d.getPassword());
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException e) {
            System.out.println(e);
            System.out.println("----------LOI UPDATE DOCTOR trong DoctorRepository------------");
        }
    }
    public static int totalDoctor(){
        int i = 0;
        
        try(Connection conn = DBConnect.getConnection()) {
            
            String query = "select * from Doctor";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                i++;
            }
            
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("------Loi lay totalCount Doctor-----------");
        }
        return i;
    }
    
    public static Doctor getDoctorById(int dId){
        
        try(Connection conn = DBConnect.getConnection()) {
            
            String query = "Select * from Doctor where dId = ?";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, dId);
            ResultSet rs = ps.executeQuery();
            Doctor d = new Doctor();
            if (rs.next()) {
                d.setdId(rs.getInt("dId"));
                d.setFullName(rs.getString("fullName"));
                d.setDateOfBirth(rs.getString("dateOfBirth"));
                d.setEmail(rs.getString("email"));
                d.setPhone(rs.getString("phone"));
                d.setSpecialist(rs.getString("specialist"));
                d.setPassword(rs.getString("password"));
            } 
            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI GET ID DOCTOR trong DoctorRepository------------");
        }
        return null;
    }
}
