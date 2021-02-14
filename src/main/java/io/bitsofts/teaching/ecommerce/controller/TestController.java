/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.controller;

import io.bitsofts.teaching.ecommerce.entity.Category;
import io.bitsofts.teaching.ecommerce.entity.Product;
import io.bitsofts.teaching.ecommerce.entity.TestEntity;
import io.bitsofts.teaching.ecommerce.repository.CategoryRepository;
import io.bitsofts.teaching.ecommerce.repository.TestRepository;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;
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
public class TestController {
    @Autowired
    private TestRepository tr;
    
   @RequestMapping(method = RequestMethod.GET, value = "/testappoint")
    public String appoint() {
        return "testappoint";
    }
    @PostMapping(path = "/addtest")
    public String addAppoint(@RequestParam Map<String, String> params, Model m) {
        
//        TestEntity t = tr.findByTestNameAndTestDate((params.get("testname")),(params.get("testdate")));
       
//        String testname = t.getTestName();
//        String testdate = t.getTestDate();
//        if (params.get("testname").equals(testname) && params.get("testdate").equals(testdate)) {
//            return "default";
//        } else {

            TestEntity te = new TestEntity();
            List<TestEntity> exist = tr.findByTestNameAndTestDate((params.get("testname")),(params.get("testdate")));
             System.out.println("Size ----------- "+exist.size());
             if(exist.size() >=3){
                    return "errorpage";
                }
         
             te.setTestName(params.get("testname"));
        te.setTestDate(params.get("testdate"));
            tr.save(te);
            return "testappoint";  
          }
          //System.out.println("name-------"+t.getTestName()+("date-------")+t.getTestDate());
           
        }

