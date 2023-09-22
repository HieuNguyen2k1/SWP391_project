/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.entity;

/**
 *
 * @author ADMIN
 */
public class Doctor {

    private int dId;
    private String fullName;
    private String dateOfBirth;
    private String specialist;
    private String email;
    private String phone;
    private String password;

    public Doctor() {
    }

    public Doctor(int dId, String fullName, String dateOfBirth, String specialist, String email, String phone, String password) {
        this.dId = dId;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.specialist = specialist;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }

    public Doctor(int dId, String fullName, String dateOfBirth, String specialist, String email, String phone) {
        this.dId = dId;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.specialist = specialist;
        this.email = email;
        this.phone = phone;
    }

    public int getdId() {
        return dId;
    }

    public void setdId(int dId) {
        this.dId = dId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getSpecialist() {
        return specialist;
    }

    public void setSpecialist(String specialist) {
        this.specialist = specialist;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Doctor{" + "dId=" + dId + ", fullName=" + fullName + ", dateOfBirth=" + dateOfBirth + ", specialist=" + specialist + ", email=" + email + ", phone=" + phone + ", password=" + password + '}';
    }    
}
