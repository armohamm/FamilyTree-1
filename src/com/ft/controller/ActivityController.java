package com.ft.controller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ft.common.BaseService;
import com.ft.entity.Activity;
import com.ft.entity.User;
import com.ft.service.ActivityService;

@Controller
@RequestMapping("/activity")
public class ActivityController {
	
	@Autowired
	ActivityService acservice;
	
	@RequestMapping(value="/newac")
	public @ResponseBody List<Activity> newActivity(HttpSession session,Model m){
//		User user = new User();
//		user.setUsername("aaa");
//		user.setPassword("12345");
//		System.out.print("user");
		List<Activity> list = new ArrayList<Activity>();
		list = acservice.findAll();
//		System.out.println(list.size());
		//m.addAttribute("activity",activity);
		
		return list;
	}
	
	@RequestMapping(value="/newac2")
	
	public @ResponseBody List<Activity> desplay(String arg,HttpSession session){
		
        Activity activity = new Activity();
		
		activity.setContent(arg);
		String username =(String)session.getAttribute("username");
		activity.setUsername(username);
		
		Date date = new Date();
		System.out.print(date);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(date);
		System.out.print(time);
		activity.setTime(time);
		
		acservice.save(activity);
		
		List<Activity> list = new ArrayList<Activity>();
		list = acservice.findAll();
		
		//Map<String,Object> modelMap = new HashMap<String,Object>(3);
		//modelMap.put("activityList", list);
		
		return list;
		
	}
	

}
