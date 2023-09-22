/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.ArrayList;
import model.entity.Clinic;
import model.repository.ClinicRepository;

/**
 *
 * @author ADMIN
 */
public class ClinicSerivce {
    
    public static int generateID(){
        return ClinicRepository.generateID();
    }
    
    public static void addClinic(Clinic c){
        ClinicRepository.addClinic(c);
    }
    public static ArrayList<Clinic> getAllClinic(){
        return ClinicRepository.getAllClinic();
    }
    public static void updateClinic(Clinic c){
        ClinicRepository.updateClinic(c);
    }
    
    public static void deleteClinic(int cId){
        ClinicRepository.deleteCli(cId);
    }
    
    public static ArrayList<Clinic> getCliByDoc(){
        return ClinicRepository.getClinicByDoc();
    }
}
