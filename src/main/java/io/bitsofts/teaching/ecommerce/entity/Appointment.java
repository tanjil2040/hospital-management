/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.entity;

import java.time.LocalTime;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.data.geo.Shape;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;

/**
 *
 * @author JEE
 */
@Entity
@Table(name = "appointTable")
public class Appointment {

    int appointId;
    String patientName;
    String email;
    String contactNumber;
    String doctorName;
    String dateOfBirth;
    String bloodGroup;
    String bloodType;
    String gender;
    String nid;
    String appointDate;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
   public int getAppointId() {
        return appointId;
    }

    public void setAppointId(int appointId) {
        this.appointId = appointId;
    }

    public String getDoctorName() {
        return doctorName;
    }


    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }
    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAppointDate() {
        return appointDate;
    }

    public void setAppointDate(String appointDate) {
        this.appointDate = appointDate;
    }

  

 
  

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    } 

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getBloodType() {
        return bloodType;
    }

    public void setBloodType(String bloodType) {
        this.bloodType = bloodType;
    }
 

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
