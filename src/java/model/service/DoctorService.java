/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.List;
import model.entity.Doctor;
import model.repository.DoctorRepository;

/**
 *
 * @author ADMIN
 */
public class DoctorService {
    public static Doctor doctorLogin(String email, String password){
        return DoctorRepository.doctorLogin(email, password);
    }
    public static int generateID(){
        return DoctorRepository.generateID();
    }
    
    public static void doctorRegister(Doctor d){
        DoctorRepository.doctorRegister(d);
    }
    public static List<Doctor> getAllDoc(){
        return DoctorRepository.getAllDoctor();
    }
    public static void deleteDoc(int dId){
        DoctorRepository.deleteDoc(dId);
    }
    public static void updateDoc(Doctor d) throws ClassNotFoundException{
        DoctorRepository.updateDoc(d);
    }
    public static Doctor getDoctorByID(int dId){
       return DoctorRepository.getDoctorById(dId);
    }
    public static int totalCountDoc(){
        return DoctorRepository.totalDoctor();
    }
    
}
