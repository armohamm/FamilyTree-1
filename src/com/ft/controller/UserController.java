package com.ft.controller;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ft.dao.UserDao;
import com.ft.entity.User;
import com.ft.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {	
		
	    @Autowired
		UserService service;
		
				
		@RequestMapping("/toregisit")
		public String tologin()
		{
			return "regisit";
		}
		@RequestMapping("/tologin")
		public String tologinn()
		{
			return "login";
		}
		
		@RequestMapping("/loginsuc")
		public String loginsuc()
		{
			return "UserInfo";
		}
		
		
		
		@RequestMapping("/tosuc")
		public String login(Model m,User u)
		{
			// service.delete(2);
			service.save(u);
			//m.addAttribute("u", u);
			return "suc";
		}
		@RequestMapping("/delete/{id}")
		public String delete(@PathVariable("id") int id, Model model)
		{
			// service.delete(2);
			service.delete(id);
			//m.addAttribute("u", u);
			model.addAttribute("users",service.findAll());
			return "suc";
		}
		
		@RequestMapping("/get/{name}")
		public String get(@PathVariable("name") String name, Model model)
		{
			// model.addAttribute("u",service.get(id));
			model.addAttribute("cnt",service.countBy("o.username = ?", new Object[]{name}));
			return "suc";
		}
		
		@RequestMapping("/sign")
		public String sign(Model m,User u)
		{
			int i;
		i =	service.countBy("o.username = ?", new Object[]{u.getUsername()});
			if(i==1)
				return "Userexist";
			else
			{
				service.save(u);
				return "succeed";
			}
		}
		@RequestMapping("/login")
		public String login2(Model m,User u)
		{
	    
		User a = service.findUniqueBy("username", u.getUsername());
		//User a=service.gett(u.getUsername());
		String b = a.getPassword();
		String c = u.getPassword();
		//System.out.print(b);
		//System.out.print(u.getPassword());
		if(b.equals(c)){
			//System.out.print("success");
			

			
			m.addAttribute(u);
			return "loginsuc";
		}
		else return "regisit";
			
			
		} 
		@RequestMapping("/update")
		public String update(User u)
		{
			
		
	User a = service.findUniqueBy("username", u.getUsername());	
		a.setPassword(u.getPassword());	
		service.update(a);	
			
	     
		return "update";	
			
		
			
		}
			
			
		
		
		
		
		
		
		
		
		
		
	}

