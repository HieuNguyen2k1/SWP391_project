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
import model.entity.Clinic;

/**
 *
 * @author ADMIN
 */
public class ClinicRepository {

    public static int generateID() {
        try (Connection conn = DBConnect.getConnection()) {
            String query = "SELECT MAX(cId) AS max_id FROM Clinic";
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
            System.out.println("----------LOI generateID trong ClinicRepository-----------");
        }
        return 0;
    }

    public static void addClinic(Clinic c) {

        try (Connection conn = DBConnect.getConnection()) {

            String query = "Insert into Clinic(cId, cName, specialist ,contactPhone, cliAddress, dId) values (?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, c.getcId());
            ps.setString(2, c.getcName());
            ps.setString(3, c.getSpecialist());
            ps.setString(4, c.getContactPhone());
            ps.setString(5, c.getCliAddress());
            ps.setInt(6, c.getdId());
            ps.executeUpdate();
            conn.commit();
            conn.close();
            ps.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI ADDClinic trong ClinicRepository-----------");
        }
    }

    public static ArrayList<Clinic> getAllClinic() {
        ArrayList<Clinic> cliList = new ArrayList<>();

        try (Connection conn = DBConnect.getConnection()) {

            String query = "select * from Clinic";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int cId = rs.getInt("cId");
                String cName = rs.getString("cName");
                String specialist = rs.getString("specialist");
                String contactPhone = rs.getString("contactPhone");
                String cliAddress = rs.getString("cliAddress");
                int dId = rs.getInt("dId");
                Clinic c = new Clinic(cId, cName, contactPhone, specialist, cliAddress, dId);
                cliList.add(c);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI getAllClinic trong ClinicRepository-----------");
        }
        return cliList;
    }

    public static void updateClinic(Clinic c) {

        try (Connection conn = DBConnect.getConnection()) {

            String query = "update Clinic set cName = ?, specialist = ?, contactPhone = ?, cliAddress = ?, dId = ? where cId = ?";
            PreparedStatement ps = conn.prepareStatement(query);

            ps.setString(1, c.getcName());
            ps.setString(2, c.getSpecialist());
            ps.setString(3, c.getContactPhone());
            ps.setString(4, c.getCliAddress());
            ps.setInt(5, c.getdId());
            ps.setInt(6, c.getcId());
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI update trong ClinicRepository-----------");
        }
    }

    public static void deleteCli(int cId) {
        try (Connection conn = DBConnect.getConnection()) {
            String query = "Delete from Clinic WHERE cId = ?\n";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, cId);
            ps.executeQuery();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI Delete Clinic trong ClinicRepository------------");
        }
    }

    public static ArrayList<Clinic> getClinicByDoc() {
        ArrayList<Clinic> cliList = new ArrayList<>();

        try (Connection conn = DBConnect.getConnection()) {

            String query = "select cId, cName, Clinic.specialist, contactPhone, cliAddress, Doctor.fullName from Clinic, Doctor where Clinic.dId = Doctor.dId";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int cId = rs.getInt("cId");
                String cName = rs.getString("cName");
                String specialist = rs.getString("specialist");
                String contactPhone = rs.getString("contactPhone");
                String cliAddress = rs.getString("cliAddress");
                String docName = rs.getString("fullName");
                Clinic c = new Clinic(cId, cName, contactPhone, specialist, cliAddress, docName);
                cliList.add(c);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("----------LOI getAllClinic trong ClinicRepository-----------");
        }
        return cliList;
    }
}
