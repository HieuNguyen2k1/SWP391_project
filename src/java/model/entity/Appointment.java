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
public class Appointment {
    private int aId;
    private int dId;
    private int cId;
    private int pId;
    private String date;
    private String status;
    private double totalAmount;
    private String result;
    private String description;
    private String cName;
    private String docName;
    private String patName;
    

    public Appointment() {
    }

    public Appointment(int aId, int dId, int cId, int pId, String date, String status, double totalAmount, String result, String description) {
        this.aId = aId;
        this.dId = dId;
        this.cId = cId;
        this.pId = pId;
        this.date = date;
        this.status = status;
        this.totalAmount = totalAmount;
        this.result = result;
        this.description = description;
    }

    public Appointment(int aId, String date, String status, double totalAmount, String result, String description, String cName, String docName, String patName) {
        this.aId = aId;
        this.date = date;
        this.status = status;
        this.totalAmount = totalAmount;
        this.result = result;
        this.description = description;
        this.cName = cName;
        this.docName = docName;
        this.patName = patName;
    }

    public Appointment(int pId, String date, String status, double totalAmount, String result, String description, String docName, String patName) {
        this.pId = pId;
        this.date = date;
        this.status = status;
        this.totalAmount = totalAmount;
        this.result = result;
        this.description = description;
        this.docName = docName;
        this.patName = patName;
    }

    public Appointment(int aId, int dId, int cId, int pId, String date, String description) {
        this.aId = aId;
        this.dId = dId;
        this.cId = cId;
        this.pId = pId;
        this.date = date;
        this.description = description;
    }
    

    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    public int getdId() {
        return dId;
    }

    public void setdId(int dId) {
        this.dId = dId;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getPatName() {
        return patName;
    }

    public void setPatName(String patName) {
        this.patName = patName;
    }

    @Override
    public String toString() {
        return "Appointment{" + "aId=" + aId + ", dId=" + dId + ", cId=" + cId + ", pId=" + pId + ", date=" + date + ", status=" + status + ", totalAmount=" + totalAmount + ", result=" + result + ", description=" + description + ", cName=" + cName + ", docName=" + docName + ", patName=" + patName + '}';
    }
    
    
    
}
