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
public class Patient {
    private int pId;
    private String fullName;
    private String gender;
    private String dateOfBirth;
    private String email;
    private String phone;
    private String address;
    private String password;

    public Patient() {
    }

    public Patient(int pId, String fullName, String gender, String dateOfBirth, String email, String phone, String address, String password) {
        this.pId = pId;
        this.fullName = fullName;
        this.gender = gender;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.password = password;
    }

    public Patient(int pId, String fullName, String gender, String dateOfBirth, String email, String phone, String address) {
        this.pId = pId;
        this.fullName = fullName;
        this.gender = gender;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.phone = phone;
        this.address = address;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }


    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Patient{" + "pId=" + pId + ", fullName=" + fullName + ", gender=" + gender + ", dateOfBirth=" + dateOfBirth + ", email=" + email + ", phone=" + phone + ", address=" + address + ", password=" + password + '}';
    }
}
