/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author JEE
 */
@Entity
@Table(name = "serviceTable")
public class Service {

    int serviceId;
    int physicalCheckup;
    int bloodTest;
    int hospitalCharge;
    int urineTest;
    int xray;
    int doctorFees;
 @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public int getPhysicalCheckup() {
        return physicalCheckup;
    }

    public void setPhysicalCheckup(int physicalCheckup) {
        this.physicalCheckup = physicalCheckup;
    }

    public int getBloodTest() {
        return bloodTest;
    }

    public void setBloodTest(int bloodTest) {
        this.bloodTest = bloodTest;
    }

    public int getHospitalCharge() {
        return hospitalCharge;
    }

    public void setHospitalCharge(int hospitalCharge) {
        this.hospitalCharge = hospitalCharge;
    }

    public int getUrineTest() {
        return urineTest;
    }

    public void setUrineTest(int urineTest) {
        this.urineTest = urineTest;
    }

    public int getXray() {
        return xray;
    }

    public void setXray(int xray) {
        this.xray = xray;
    }

    public int getDoctorFees() {
        return doctorFees;
    }

    public void setDoctorFees(int doctorFees) {
        this.doctorFees = doctorFees;
    }
    
    
}
