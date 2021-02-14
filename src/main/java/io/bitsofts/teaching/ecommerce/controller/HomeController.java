/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.controller;

import io.bitsofts.teaching.ecommerce.entity.Appointment;
import io.bitsofts.teaching.ecommerce.entity.Category;
import io.bitsofts.teaching.ecommerce.entity.Product;
import io.bitsofts.teaching.ecommerce.entity.Service;
import io.bitsofts.teaching.ecommerce.repository.AppointRepository;
import io.bitsofts.teaching.ecommerce.repository.CategoryRepository;
import io.bitsofts.teaching.ecommerce.repository.ProductRepository;
import io.bitsofts.teaching.ecommerce.repository.ServiceRepository;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.SessionScope;

/**
 *
 * @author J2EE
 */
@SessionScope
@Controller
public class HomeController {

    String docname;
    Date apondate;
    Date checkdate;

    private SessionFactory hibernateFactory;
    @Autowired
    private AppointRepository ar;
    @Autowired
    private ServiceRepository sr;

    @Autowired
    public HomeController(EntityManagerFactory factory) {
        if (factory.unwrap(SessionFactory.class) == null) {
            throw new NullPointerException("factory is not a hibernate factory");
        }
        this.hibernateFactory = factory.unwrap(SessionFactory.class);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/home")
    public String home() {

        return "home";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/default")
    public String defaul() {
        return "default";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/patientpage")
    public String patient() {
        return "patient";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/servicepage")
        public String servicePage(Model m){
     List<Service> s = sr.findAll();
     m.addAttribute("s", s);
        return "servicepage";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/appointmentpage")
    public String appoint() {
        return "appoint";
    }

    @PostMapping(path = "/addAppoint")
    public String addAppoint(@RequestParam Map<String, String> params, Model m, HttpSession session) {
 Appointment a = new Appointment();
            List<Appointment> ap = ar.findByDoctorNameAndAppointDate(params.get("doctorname"), params.get("date"));
             if(ap.size() >=3){
                  session.setAttribute("dname", params.get("doctorname"));
                                  session.setAttribute("pname", params.get("pname"));

                    return "errorpage";
                }
                a.setBloodGroup(params.get("bg"));
                a.setBloodType(params.get("bt"));
                a.setContactNumber(params.get("contactnumber"));
                a.setDateOfBirth(params.get("dat"));
                a.setDoctorName(params.get("doctorname"));

                a.setAppointDate(params.get("date"));
            
                a.setEmail(params.get("email"));
                

                a.setGender(params.get("gender"));
                a.setPatientName(params.get("pname"));
                a.setNid(params.get("nid"));
                ar.save(a);

                session.setAttribute("pname", params.get("pname"));
               session.setAttribute("dname", params.get("doctorname"));
           

            return "success";

        }
    

    @RequestMapping(method = RequestMethod.GET, value = "/doctorpage")
    public String doctor() {
        return "doctor";
    }

    @PostMapping(path = "/Calculate")
    public String payment(@RequestParam Map<String, String> params, Model m,HttpSession session) {
session.setAttribute("pname", params.get("pname"));
        String ck = params.get("phycheck");
        String bt = params.get("bt");
        String hos = params.get("hoscharge");
        String ut = params.get("ut");
        String xray = params.get("xray");
        String docfee = params.get("docfee");

        int a = ck == null || ck.equals("null") ?  0:Integer.valueOf(ck);
        int b =  bt == null || bt.equals("null") ?  0:Integer.valueOf(bt);
        int c = hos == null || hos.equals("null") ?  0:Integer.valueOf(hos);
        int d = ut == null || ut.equals("null") ?  0:Integer.valueOf(ut);
        int e = xray == null || xray.equals("null") ?  0:Integer.valueOf(xray);
        int f = docfee == null || docfee.equals("null") ?  0:Integer.valueOf(docfee);
       int t = a+b+c+d+e+f;

        m.addAttribute("phy", a);
        m.addAttribute("bt", b);
        m.addAttribute("hos", c);
        m.addAttribute("ut", d);
        m.addAttribute("xray", e);
        m.addAttribute("docfee", f);
        m.addAttribute("total", t);

        return "paymentpage";

    }
}
