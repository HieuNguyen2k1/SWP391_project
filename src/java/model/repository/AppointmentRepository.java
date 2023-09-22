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
import model.config.DBConnect;
import model.entity.Appointment;

/**
 *
 * @author ADMIN
 */
public class AppointmentRepository {

    public static int totalAppointment() {
        int i = 0;

        try (Connection conn = DBConnect.getConnection()) {

            String query = "select * from Appointment";

            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                i++;
            }

        } catch (Exception e) {
            System.out.println(e);
            System.out.println("------Loi lay totalCount Appointment---------");
        }
        return i;
    }

    public static int generateID() {
        try (Connection conn = DBConnect.getConnection()) {
            String query = "SELECT MAX(aId) AS max_id FROM Appointment";
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
            System.out.println("----------LOI generateID trong AppointmentRepository-----------");
        }
        return 0;
    }

    public static ArrayList<Appointment> getAllApoint() {
        ArrayList<Appointment> apList = new ArrayList<>();
        try (Connection conn = DBConnect.getConnection()) {

            String query = "select * from Appointment";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int aId = rs.getInt("aId");
                int dId = rs.getInt("dId");
                int cId = rs.getInt("cId");
                int pId = rs.getInt("pId");
                String date = rs.getString("date");
                double totalAmount = rs.getDouble("totalAmount");
                String result = rs.getString("Result");
                String description = rs.getString("description");
                Appointment ap = new Appointment(aId, dId, cId, pId, date, date, totalAmount, result, description);
                apList.add(ap);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI getAll trong AppointmentRepository-----------");
        }
        return apList;
    }

    public static ArrayList<Appointment> getAllApointbyName() {
        ArrayList<Appointment> apList = new ArrayList<>();
        try (Connection conn = DBConnect.getConnection()) {

            String query = "select aId, Clinic.cName, Patient.fullName, date ,status, totalAmount, Result, description, Doctor.fullName As docName from Appointment, Doctor, Patient, Clinic\n"
                    + "where Appointment.dId = Doctor.dId and Appointment.cId = Clinic.cId and Appointment.pId = Patient.pId";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int aId = rs.getInt("aId");
                String cName = rs.getString("cName");
                String docName = rs.getString("docName");
                String patName = rs.getString("fullName");
                String date = rs.getString("date");
                String status = rs.getString("status");
                double totalAmount = rs.getDouble("totalAmount");
                String result = rs.getString("Result");
                String description = rs.getString("description");
                Appointment ap = new Appointment(aId, date, status, totalAmount, result, description, cName, docName, patName);
                apList.add(ap);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI getAll trong AppointmentRepository-----------");
        }
        return apList;
    }

    public static void createAppoinment(Appointment ap) {

        try (Connection conn = DBConnect.getConnection()) {

            String query = "Insert into Appointment (aId, dId, cId, pId, date, status, totalAmount, Result, description) values(?, ?, ?, ?, ?, ? ,? ,? ,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, ap.getaId());
            ps.setInt(2, ap.getdId());
            ps.setInt(3, ap.getcId());
            ps.setInt(4, ap.getpId());
            ps.setString(5, ap.getDate());
            ps.setDouble(6, ap.getTotalAmount());
            ps.setString(7, ap.getResult());
            ps.setString(8, ap.getStatus());
            ps.setString(9, ap.getDescription());
            ps.executeUpdate();
            conn.commit();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI createAppointment trong AppointmentRepository-----------");
        }
    }

    public static void updateAppoinment(Appointment ap) {

        try (Connection conn = DBConnect.getConnection()) {

            String query = "Update Appointment set dId = ?, cId = ?, pId = ?, date = ?, status = ?, totalAmount = ?, Result = ?, description = ? where aId = ? ";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(9, ap.getaId());
            ps.setInt(1, ap.getdId());
            ps.setInt(2, ap.getcId());
            ps.setInt(3, ap.getpId());
            ps.setString(4, ap.getDate());
            ps.setString(5, ap.getStatus());
            ps.setDouble(6, ap.getTotalAmount());
            ps.setString(7, ap.getResult());
            ps.setString(8, ap.getDescription());
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI updateAppointment trong AppointmentRepository-----------");
        }
    }

    public static void deleteApont(int aId) {
        try (Connection conn = DBConnect.getConnection()) {
            String query = "Delete from Appointment where aId =?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, aId);
            ps.executeQuery();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI Delete Appointment trong AppontmentRepository------------");
        }
    }

    public static ArrayList<Appointment> getAllAppointByPatient(int pId) {
        ArrayList<Appointment> apList = new ArrayList<>();
        try (Connection conn = DBConnect.getConnection()) {
            String query = "SELECT Patient.fullName AS patName, cName, date, status, totalAmount, Result, description, Doctor.fullName AS docName "
                    + "FROM Appointment "
                    + "INNER JOIN Doctor ON Appointment.dId = Doctor.dId "
                    + "INNER JOIN Patient ON Appointment.pId = Patient.pId "
                    + "INNER JOIN Clinic ON Appointment.cId = Clinic.cId "
                    + "WHERE Appointment.pId = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, pId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String patName = rs.getString("patName");
                String cName = rs.getString("cName");
                String docName = rs.getString("docName");
                String date = rs.getString("date");
                String status = rs.getString("status");
                double totalAmount = rs.getDouble("totalAmount");
                String result = rs.getString("Result");
                String description = rs.getString("description");
                Appointment ap = new Appointment(pId, date, status, totalAmount, result, description, cName, docName, patName);
                apList.add(ap);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI getPatient trong AppointmentRepository-----------");
        }
        return apList;
    }

    public static void createAppointmentByPatId(Appointment ap) {

        try (Connection conn = DBConnect.getConnection()) {

            String query = "Insert into Appointment (aId, dId, cId, pId, date) values (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, ap.getaId());
            ps.setInt(2, ap.getdId());
            ps.setInt(3, ap.getcId());
            ps.setInt(4, ap.getpId());
            ps.setString(5, ap.getDate());
            ps.executeUpdate();
            conn.commit();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI createAppointment trong AppointmentRepository-----------");
        }
    }
}
