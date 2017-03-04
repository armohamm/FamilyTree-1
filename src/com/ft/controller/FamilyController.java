package com.ft.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ft.entity.Family;
import com.ft.entity.User;
import com.ft.service.UserService;
import com.ft.service.FamilyService;
@Controller
@RequestMapping("/family")
public class FamilyController{

@Autowired
FamilyService fservice;
@Autowired
UserService uservice;

@RequestMapping("/creatfmy")
public String creatfmy(Model m,Family f ,HttpSession session)
{   	
	String current =  (String) session.getAttribute("username");

	User a = uservice.findUniqueBy("username",current);
 	//if (a.getFamilyId()==null) {
 		f.setFirstname(a.getFirstname());
        f.setAdminid(a.getId());
        fservice.save(f);
        
		session.setAttribute("familyid",f.getId() );
        a.setFamilyId(f.getId());
        uservice.update(a);
       return "creatfmy"; 	
 //}
  
}




}





	
	
	
	
	

