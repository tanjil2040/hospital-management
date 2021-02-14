/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.repository;

import io.bitsofts.teaching.ecommerce.entity.Appointment;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author JEE
 */
@Repository
public interface AppointRepository extends JpaRepository<Appointment, Integer>{
 //Appointment findByAppointId(int appointId);
//   Appointment findByFirstName(String firstName);
// @Override
//    ArrayList<Appointment> findAll();  
//    Appointment findByAppointId(int appointId);
List<Appointment> findByDoctorNameAndAppointDate(String doctorName, String appointDate);
List<Appointment> findByDoctorName(String doctorName);
//    @Query("SELECT a FROM appointTable a where a.doctorName like %?1%")
//    public List<Appointment> search(String keyword);

  // Appointment findByAppointId(int appointId);
    public Optional<Appointment> findByAppointId(int appointId);
//    public Optional<Appointment> findByFirstName(String firstName);
    //public Optional<Appointment> findByAppointId(Integer appointId);
}
