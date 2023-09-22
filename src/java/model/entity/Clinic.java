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
public class Clinic {

    private int cId; 
    private String cName;
    private String contactPhone;
    private String specialist;
    private String cliAddress;
    private int dId;
    private String fullName;

    public Clinic() {
    }

    public Clinic(int cId, String cName, String contactPhone, String specialist, String cliAddress, int dId) {
        this.cId = cId;
        this.cName = cName;
        this.contactPhone = contactPhone;
        this.specialist = specialist;
        this.cliAddress = cliAddress;
        this.dId = dId;
    }

    public Clinic(int cId, String cName, String contactPhone, String specialist, String cliAddress, String fullName) {
        this.cId = cId;
        this.cName = cName;
        this.contactPhone = contactPhone;
        this.specialist = specialist;
        this.cliAddress = cliAddress;
        this.fullName = fullName;
    }
    
    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    public String getSpecialist() {
        return specialist;
    }

    public void setSpecialist(String specialist) {
        this.specialist = specialist;
    }

    public String getCliAddress() {
        return cliAddress;
    }

    public void setCliAddress(String cliAddress) {
        this.cliAddress = cliAddress;
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

    @Override
    public String toString() {
        return "Clinic{" + "cId=" + cId + ", cName=" + cName + ", contactPhone=" + contactPhone + ", specialist=" + specialist + ", cliAddress=" + cliAddress + ", dId=" + dId + ", fullName=" + fullName + '}';
    }

}
