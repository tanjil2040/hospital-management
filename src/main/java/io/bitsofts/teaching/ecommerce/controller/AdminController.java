/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.controller;


import io.bitsofts.teaching.ecommerce.entity.Appointment;
import io.bitsofts.teaching.ecommerce.entity.Doctor;
import io.bitsofts.teaching.ecommerce.entity.Service;
import io.bitsofts.teaching.ecommerce.repository.AppointRepository;
import io.bitsofts.teaching.ecommerce.repository.DoctorRepository;
import io.bitsofts.teaching.ecommerce.repository.ServiceRepository;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javassist.compiler.ast.Keyword;
import javax.servlet.http.HttpSession;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author JEE
 */
@Transactional
@Controller
public class AdminController {

    private SessionFactory hibernateFactory;
    @Autowired
    private DoctorRepository dr;
    @Autowired
    private ServiceRepository sr;
    @Autowired
    private AppointRepository ar;

   

    @RequestMapping(method = RequestMethod.GET, value = "/doctorinfopage")
    public String doctorinfopage(Model m) {
        return "doctorinfo";
    }

    @PostMapping(path = "/addDoctor")
    public String addDoctor(@RequestParam Map<String, String> params, Model m) {

        Doctor d = new Doctor();
             d.setDoctorName(params.get("doctorname"));
        d.setSpecialist(params.get("specialist"));
        d.setJoinDate(params.get("date"));
        d.setDoctorImage(params.get("doctorimage"));
        dr.save(d);
      
        return "admin";
    }
       @RequestMapping(method = RequestMethod.GET, value = "/searchpage")        
     public String search(@RequestParam("doctorname") String doctorName, Model m){
       // ArrayList<Appointment> ap = ar.findByAppointId(appointId);
        // int apid = Integer.valueOf(params.get("keyword"));
//         List<Appointment> listAppoints = as.listAll(keyword);
           List<Appointment> ap = ar.findByDoctorName(doctorName);
         m.addAttribute("ap", ap);
         return "searchinfopage";
     }
       @RequestMapping(method = RequestMethod.GET, value = "/searchinfopage")        
     public String search(){
         return "searchinfopage";
     }
       @RequestMapping(method = RequestMethod.GET, value = "/historypage")        
     public String history(Model m){
      List<Appointment> a = ar.findAll();
         m.addAttribute("a", a);
          
         return "historypage";
     }
    
    @RequestMapping(method = RequestMethod.GET, value = "/serviceinfopage")
//    @PostMapping(path = "/serviceinfopage")
     public String serviceinfopage(Model m) {
         List<Service> s = sr.findAll();
         
     m.addAttribute("s", s);
        
        return "serviceinfo";
    }
    
     @PostMapping(path = "/deleteservice")
     public String deleteService(@RequestParam("sid") int sid,Model m){
         
         System.out.println("-----------------"+ sid);
     Service s = new Service();
     s.setServiceId(sid);
         sr.delete(s);
      List<Service> restService = sr.findAll();
         
     m.addAttribute("s", restService);
       return "serviceinfo";
     }
  @PostMapping(path = "/serviceinfopage")
  public String addService(@RequestParam Map<String, String> params,Model m){
    Service s = new Service();
    s.setBloodTest(Integer.valueOf(params.get("bt")));
    s.setDoctorFees(Integer.valueOf(params.get("docfee")));
    s.setHospitalCharge(Integer.valueOf(params.get("hoscharge")));
    s.setPhysicalCheckup(Integer.valueOf(params.get("phycheck")));
    s.setUrineTest(Integer.valueOf(params.get("ut")));
    s.setXray(Integer.valueOf(params.get("xray")));
    sr.save(s);
         return "admin";
     }
@RequestMapping(method = RequestMethod.GET, value = "/billpage")
  //  @PostMapping(path = "/serviceinfopage")
     public String billpage(Model m) {
         List<Service> s = sr.findAll();
        System.out.println("iiiii------"+s.size());
        int chackup = s.get(0).getPhysicalCheckup();
        int bt = s.get(0).getBloodTest();
        int hos = s.get(0).getHospitalCharge();
        int ut = s.get(0).getUrineTest();
        int xray = s.get(0).getXray();
        int doc = s.get(0).getDoctorFees();
         m.addAttribute("chackup", chackup);
         m.addAttribute("bt", bt);
         m.addAttribute("hos", hos);
         m.addAttribute("ut", ut);
         m.addAttribute("xray", xray);
         m.addAttribute("doc", doc);
        return "service";
    }   
    
@RequestMapping(method = RequestMethod.GET, value = "/searchPatient")
       public String search(@RequestParam("appointId") int appointId,Model m,HttpSession session){
          Appointment a = ar.findByAppointId(appointId).get();
         m.addAttribute("a", a);
         session.setAttribute("pname", session.getAttribute("pname"));
         return "service";
     }
    
}
