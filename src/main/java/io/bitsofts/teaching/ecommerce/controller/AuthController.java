/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.controller;

import io.bitsofts.teaching.ecommerce.entity.User;
import io.bitsofts.teaching.ecommerce.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author J2EE
 */
@Controller
public class AuthController {
    
    @Autowired
    private UserRepository ur;
    
//    @RequestMapping(method = RequestMethod.GET, value = "/signup")
//    public String signup() {
//        return "signup";
//    }
//    @RequestMapping(method = RequestMethod.GET, value = "/loginView")
//    public String loginView() {
//        
//        return "login";
//    }
    @RequestMapping(method = RequestMethod.GET, value = "/loginpage")
    public String login() {
        
        return "loginhospital";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/adminpage")
    public String admin() {
        
        return "admin";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/login")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password) {
        User u = ur.findByEmailAndPassword(email, password);
        if(u != null) {
            System.out.println("User type "+u.getType());
            if(u.getType().equals("user")) {
                // return user dashboard
                return "userHomePage";
            } else {
                // return admin dashboard
                return "admin_dashboard";
            }
        }
        return "login";
    }
}
