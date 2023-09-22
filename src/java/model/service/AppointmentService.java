/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.ArrayList;
import model.entity.Appointment;
import model.repository.AppointmentRepository;

/**
 *
 * @author ADMIN
 */
public class AppointmentService {
    
    public static int totalApp(){
        return AppointmentRepository.totalAppointment();
    } 
    
    public static int generateId(){
        return AppointmentRepository.generateID();
    }
    
    public static ArrayList<Appointment> getAllAppoint(){
        return AppointmentRepository.getAllApoint();
    }
    public static ArrayList<Appointment> getAllAppointByName(){
        return AppointmentRepository.getAllApointbyName();
    }
    
    public static void createAppoi(Appointment ap){
        AppointmentRepository.createAppoinment(ap);
    }
    public static void updateAppointment(Appointment ap){
        AppointmentRepository.updateAppoinment(ap);
    }
    public static void deleteAppo(int aId){
        AppointmentRepository.deleteApont(aId);
    }
    
    public static ArrayList<Appointment> getAppointByPat(int pId){
        return AppointmentRepository.getAllAppointByPatient(pId);
    }
    
    public static void createAppointmentByPat(Appointment ap){
        AppointmentRepository.createAppointmentByPatId(ap);
    }
}
