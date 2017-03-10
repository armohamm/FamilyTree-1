package com.ft.controller;
import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ft.dao.UserDao;
import com.ft.entity.Family;
import com.ft.entity.User;
import com.ft.service.FamilyService;
import com.ft.service.UserService;

@Controller

@RequestMapping("/user")
public class UserController {	
		
	    @Autowired
		UserService uservice;
	    @Autowired  
	    private HttpServletRequest request;
		@Autowired
		FamilyService fservice;
	    
	    
		@RequestMapping("/toindex")
		public String toindex()
		{
			
			return "index";
		}
		
		@RequestMapping("/newinfo")
		public String newinfo()
		{
			
			return "change";
		}
		@RequestMapping("/showmap")
		public String shoumap()
		{
			
			return "showmap";
		}
		@RequestMapping("/newtree")
		public String newtree(Family f ,HttpSession session)
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
		       return "familytree"; 	
		 }
		 	else{
		 		session.setAttribute("familyid",a.getFamilyId() );
		 		return "familytree";
		 	}
		}
		
		
		
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
		
		@RequestMapping("/adminpage")
		public String loginsuc(Model m,HttpSession session)
		{
/* 所有人都为admin                 */
		String current =  (String) session.getAttribute("username");
        User a = uservice.findUniqueBy("username",current);
        m.addAttribute("u",a);
        System.out.print(a.getUsername());
        System.out.print("111111111");
		return "adminpage";
		}
		
		
		
		@RequestMapping("/tosuc")
		public String login(Model m,User u,HttpServletRequest request)
		{
			int i =	uservice.countBy("o.username = ?", new Object[]{u.getUsername()});
				if(i==1)
				return "Userexist";
			else
			{
			HttpSession session = request.getSession();
			session.setAttribute("username", u.getUsername());
			// service.delete(2);
			uservice.save(u);
			m.addAttribute("u", u);
			return "familytree";
				
			}


			
		}
		@RequestMapping("/delete/{id}")
		public String delete(@PathVariable("id") int id, Model model)
		{
			// service.delete(2);
			uservice.delete(id);
			//m.addAttribute("u", u);
			model.addAttribute("users",uservice.findAll());
			return "suc";
		}
		
		@RequestMapping("/get/{name}")
		public String get(@PathVariable("name") String name, Model model)
		{
			// model.addAttribute("u",service.get(id));
			model.addAttribute("cnt",uservice.countBy("o.username = ?", new Object[]{name}));
			return "suc";
		}
		
		@RequestMapping("/sign")
		public String sign(Model m,User u)
		{
			int i;
		i =	uservice.countBy("o.username = ?", new Object[]{u.getUsername()});
			if(i==1)
				return "Userexist";
			else
			{
				uservice.save(u);
				return "succeed";
			}
		}
		@RequestMapping("/login")
		public String login2(Model m,User u,HttpServletRequest request)
		{
	    
		User a = uservice.findUniqueBy("username", u.getUsername());
		//User a=service.gett(u.getUsername());
		String b = a.getPassword();
		String c = u.getPassword();
		//System.out.print(b);
		//System.out.print(u.getPassword());
		if(b.equals(c)){
			//System.out.print("success");
			

			
			m.addAttribute(u);
			HttpSession session = request.getSession();
			session.setAttribute("username", u.getUsername());
			//session.getAttribute("username");
			return "familytree";
		}
		else 
		{
			return "loginfail";
		}	
			
		} 
		
		@RequestMapping("/update")
		public String update(User u,HttpSession session)
		{
			
		String username = (String) session.getAttribute("username");
		
	    User a = uservice.findUniqueBy("username", username);
	    
		a.setFirstname(u.getFirstname());	
		a.setLastname(u.getLastname());	
		a.setPassword(u.getPassword());
		a.setBirthday(u.getBirthday());	
		a.setEmail(u.getEmail());
		//a.setTelephone(u.getTelephone());	
		a.setNativeplace(u.getNativeplace());	
		a.setLocation(u.getLocation());	
		
		uservice.update(a);	
			
	     
		return "update";	
			
		
		
		}
		
		@RequestMapping("/toupld")
		public String toupld()
		{
			// service.delete(2);
			
			
			return "uploadpic";
		}
		@RequestMapping("/tree")
		public String tree()
		{
			// service.delete(2);
			
			
			return "tree";
		}
		@RequestMapping("/map")
		public String map()
		{
			// service.delete(2);
			
			
			return "map";
		}
		@RequestMapping("/familytree")
		public String familytree()
		{
			
			return "familytree";
		}
		
		
		
		
		
		
		
		
	}

