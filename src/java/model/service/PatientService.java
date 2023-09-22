/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.List;
import model.entity.Patient;
import model.repository.PatientRepository;

/**
 *
 * @author ADMIN
 */
public class PatientService {
    public static Patient patientLogini(String email, String password){
        return PatientRepository.patientLogin(email, password);
    }
    
    public static void patientRegister(Patient p){
        PatientRepository.patientRegister(p);
    }
    
    public static int generateID(){
        return PatientRepository.generateID();
    }
    public static List<Patient> getAllPa(){
        return PatientRepository.getAllPatient();
    }
    public static int totalPa(){
        return PatientRepository.totalPatient();
    }
    public static void deletePa(int pId){
        PatientRepository.deletePa(pId);
    }
    public static void updatePa(Patient p){
        PatientRepository.updatePat(p);
    }
}
