/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.repository;


import io.bitsofts.teaching.ecommerce.entity.Category;
import io.bitsofts.teaching.ecommerce.entity.Doctor;
import java.util.ArrayList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author JEE
 */
@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer>{
// Doctor findById(int id);
//
//    @Override
//    ArrayList<Doctor> findAll();    
}
