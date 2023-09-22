/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.config.DBConnect;
import model.entity.Doctor;
import model.entity.Patient;

/**
 *
 * @author ADMIN
 */
public class PatientRepository {


    public static int generateID(){
        try(Connection conn = DBConnect.getConnection()) {
             String query = "SELECT MAX(pId) AS max_id FROM patient";
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
    
    public static Patient patientLogin(String email, String password) {
        try(Connection conn = DBConnect.getConnection()) {
            String query = "Select * from Patient where email = ? and password = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Patient p = new Patient();
                p.setpId(rs.getInt(1));
                p.setFullName(rs.getString(2));
                p.setGender(rs.getString(3));
                p.setDateOfBirth(rs.getString(4));
                p.setEmail(rs.getString(5));
                p.setPhone(rs.getString(6));
                p.setAddress(rs.getString(7));
                p.setPassword(rs.getString(8));
                return p;
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI patientLogin trong PatientRepository-----------");
        }
        return null;
    }

    public static void patientRegister(Patient p) {
        try(Connection conn = DBConnect.getConnection()) {
            String query = "Insert into Patient (pId, fullName, gender, dateOfBirth, email, phone, address, password) values (?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, p.getpId());
            ps.setString(2, p.getFullName());
            ps.setString(3, p.getGender());
            ps.setString(4, p.getDateOfBirth());
            ps.setString(5, p.getEmail());
            ps.setString(6, p.getPhone());
            ps.setString(7, p.getAddress());
            ps.setString(8, p.getPassword());
            ps.executeQuery();
            conn.close();
            ps.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI patientRegister trong PatientRepository-----------");
        }
    }
    public static List<Patient> getAllPatient() {
        List<Patient> patiList = new ArrayList<>();
        try (Connection conn = DBConnect.getConnection()) {

            String query = "Select * from Patient";

            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int pId = rs.getInt("pId");
                String fullName = rs.getString("fullname");
                String gender = rs.getString("gender");
                String dob = rs.getString("dateOfBirth");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                Patient p = new Patient(pId, fullName, gender, dob, email, phone, address);
                patiList.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI LAY LIST Patient trong PatientRepository------------");
        }
        return patiList;
    }

    public static void deletePa(int pId) {
        try (Connection conn = DBConnect.getConnection()) {
            String query = "Delete from Patient where pId = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, pId);
            ps.executeQuery();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI Delete Pat trong DoctorRepository------------");
        }
    }

    public static void updatePat(Patient p) {

        try (Connection conn = DBConnect.getConnection()) {

            String query = "update Patient set fullName = ?, gender = ?, dateOfBirth = ?, email = ?, phone = ?, address = ?, password = ? where pId = ?";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, p.getFullName());
            ps.setString(2, p.getGender());
            ps.setString(3, p.getDateOfBirth());
            ps.setString(4, p.getEmail());
            ps.setString(5, p.getPhone());
            ps.setString(6, p.getAddress());
            ps.setString(7, p.getPassword());
            ps.setInt(8, p.getpId());
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI UPDATE PATIENT trong PatientRepository------------");
        }
    }

    public static int totalPatient(){
        int i = 0;
        
        try(Connection conn = DBConnect.getConnection()) {
            
            String query = "select * from Patient";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                i++;
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("------Loi lay totalCount Patient----------");
        }
        return i;
    }
}
