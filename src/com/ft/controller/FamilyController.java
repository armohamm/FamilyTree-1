package com.ft.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
 	if (a.getFamilyId()==null)
 	{
 		f.setFirstname(a.getFirstname());
        f.setAdminid(a.getId());
        fservice.save(f);
        
		session.setAttribute("familyid",f.getId() );
        a.setFamilyId(f.getId());
        uservice.update(a);
       return "creatfmy"; 	
 }
 	else{
 		session.setAttribute("familyid",a.getFamilyId() );
 		return "creatfmy";
 	}
}
@RequestMapping("/tocreatmem")
public String creatmem(Model m)
{
	
	return "newmember";
	
}

@RequestMapping("/creatmemsuc")
public String creatsuc(Model m,User u,HttpSession session)
{
	int current =  (Integer) session.getAttribute("familyid");
	Family a = fservice.findUniqueBy("id",current);
	u.setFamilyId(a.getId());
	uservice.save(u);
	return "creatsuc";
	
	
	
}



}  











	
	
	
	
	

