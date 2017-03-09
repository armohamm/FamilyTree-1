package com.ft.controller;



import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
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
import com.ft.entity.Image;
import com.ft.entity.User;
import com.ft.service.FamilyService;
import com.ft.service.ImageService;
import com.ft.service.UserService;

@Controller

@RequestMapping("/image")
public class ImageController {
	    @Autowired
		UserService uservice;
	    @Autowired  
	    private HttpServletRequest request;
		@Autowired
		FamilyService fservice;
		 @Autowired
		 ImageService iservice;
		 
		
		  @RequestMapping("/toupld")
	        public String toupld()
	        {
	            // service.delete(2);
	            
	            
	            return "uploadpic";
	        }
		   @RequestMapping("/photoalbum")
	        public String photoalbum()
	        {
	            // service.delete(2);
	            
	            
	            return "photoalbum";
	        }
		    @RequestMapping("/addpicture")
	        public String addpicture()
	        {
	            // service.delete(2);
	            
	            
	            return "addpicture";
	        }
		   
		   
		   
		   
		  @RequestMapping("/display")
	        public String display(HttpSession session,Model m)
	        {
	            // service.delete(2);
	            int current =  (Integer) session.getAttribute("familyid");
	            Family b = fservice.findUniqueBy("id",current);
	            //Image b = iService.findUniqueBy("user_id", a.getId());

	            List <Image> testme=iservice.findBy("family_id",6);
	            m.addAttribute("uu",testme);
                    Image newimg=testme.get(0);
                    String url=newimg.getImg_url();
	            System.out.println(url);
	            return "displaypic";
	        }
	        
	        
	        
	        
	           @RequestMapping(value = "/updload")  
	            public String upload(@RequestParam(value = "file", required = false) MultipartFile file,HttpServletRequest request,Image  c,HttpSession session, ModelMap model) {  
	          
	                System.out.println("开始");  
	                
	                int current =  (Integer) session.getAttribute("familyid");
	                Family a = fservice.findUniqueBy("id",current);
	                String currentt =  (String) session.getAttribute("username");
	                 User d = uservice.findUniqueBy("username",currentt);
	                
	                
	                
	                String path = request.getSession().getServletContext().getRealPath("upload");  
	                String fileName = file.getOriginalFilename();  
//	              String fileName = new Date().getTime()+".jpg";  
	                System.out.println(path);  
	                File targetFile = new File(path, fileName);  
	                if(!targetFile.exists()){  
	                    targetFile.mkdirs();  
	                }  
	          
	                //保存  
	                try {  
	                    file.transferTo(targetFile);  
	                } catch (Exception e) {  
	                    e.printStackTrace();  
	                } 
	               String b=request.getContextPath()+"/upload/"+fileName;
	                model.addAttribute("fileUrl", b);  
	                
	                
	                c.setImg_url(b);
	                c.setFamily_id(a.getId());
	                c.setUser_id(d.getId());
	                iservice.save(c);


	                // fservice.update(a);
	                
	                
	                
	                return "result";  
	            }  
		
		
		
	
	
	
	
}
