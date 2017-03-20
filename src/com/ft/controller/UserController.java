package com.ft.controller;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ft.dao.UserDao;
import com.ft.entity.Family;
import com.ft.entity.Flare;
import com.ft.entity.Image;
import com.ft.entity.User;
import com.ft.entity.sameNameFamily;
import com.ft.service.FamilyService;
import com.ft.service.UserService;
import com.ft.utils.FNorgin;
import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;

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
		
		@RequestMapping("/tojson")
		public @ResponseBody String toJson(HttpSession session)
		{
		String current =  (String) session.getAttribute("username");	
		User a = uservice.findUniqueBy("username",current);	
		//System.out.println(a.getFamilyId());
		List<User> b = uservice.findBy("familyId", a.getFamilyId());
		User c = getRoot(b);//
		
		
		
		//List <User> smfmy=getFamilymember(a.getFamilyId());
		Gson gson = new Gson();
           /* @Override
            public boolean shouldSkipField(FieldAttributes f) {
                // 这里作判断，决定要不要排除该字段,return true为排除
                if ("children".equals(f.getName()&&f.get)) return true; //按字段名排除
                Expose expose = f.getAnnotation(Expose.class); 
                if (expose != null && expose.deserialize() == false) return true; //按注解排除
                return false;
            }

			@Override
			public boolean shouldSkipClass(Class<?> arg0) {
				// TODO Auto-generated method stub
				return false;
			}}).create();*/
		String Json = gson.toJson(getFlare(c));
		System.out.print(Json);
		return Json;
		}
		
		
		public List<User> getFamilymember(int familyid)//得到家庭成员
		{
		List <User> smfmy=uservice.findBy("familyId",familyid);	
		return smfmy;	
		}
		
		public User getRoot(List<User> familyMem) {
			// int fcount=0;
			List<User> rooters = new ArrayList<User>();
			User a = uservice.findUniqueBy("id",1);
			// String current = (String) session.getAttribute("username");
			// User a = uservice.findUniqueBy("username", current);
			// List<User> smfmy = uservice.findBy("family_id", a.getFamilyId());
			for (User user : familyMem) {
				
				
				if (user.getFatherId() == 0) {
					rooters.add(user);
					// fcount++;
				}
			}
			
			if (rooters.size() == 1) {
				// 年长的唯一
				User existRooter = rooters.get(0);
				// existRooter.setId(9999);
			
				return existRooter;
			} 
			else {
				// 年长的不唯一
				for (User root : rooters) {
					a.setFamilyId(root.getFamilyId());
					root.setFatherId(1);
					uservice.update(root);
				}
				
				return a;
				//User newrooter = new User();
				//newrooter.setId();
				///newrooter.setUsername("VirtualRooter");
				//uservice.save(newrooter);
				//return newrooter;
			
			/*
			 * int i = uservice.countBy("o.fatherId = ?", null); if (i == 1) { User
			 * b = uservice.findUniqueBy("fatherId", null); return b; // 年长的唯一 }
			 * else { List<User> bb = uservice.findBy("family_id", null);// 年长的不唯一
			 * for (User u : bb) { u.setFamilyId(9999); fake.setId(9999);
			 * uservice.save(fake); } return fake; }
			 */
		}
		}
		//public Flare getFlare(User rooter, List<User> familyMem) {
		//List<Flare> flare = new ArrayList<Flare>();
		Flare f=new Flare();
		public Flare getFlare(User rooter) {
			// int childCount=0;
			
			List<Flare> children = new ArrayList<Flare>();
			//if(rooter.getFatherId()==0)
			f.setUsername(rooter.getId());
			f.setName(rooter.getFirstname()+rooter.getLastname());

			children =getChildren(rooter.getId());
			
			f.setChildren(children);
		
            return f;
		}

	
		
	
		
		private List<Flare> getChildren(Integer id) {
			List<Flare> children = new ArrayList<Flare>();
             List<User> familyMem = uservice.findBy("fatherId",id);
			for (User user : familyMem) {
					Flare temp = new Flare();
					temp.setUsername(user.getId());
					temp.setName(user.getFirstname()+user.getLastname());
					temp.setChildren(getChildren(user.getId()));
					children.add(temp);					
				//}
			}
			return children;
		}

		@RequestMapping("/newinfo")
		public String newinfo()
		{
			//System.out.println(id);
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
		@RequestMapping("/userinfo")
		public String userinfo(Model m,HttpSession session )
		{
			return "UserInfo";
			
			
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
		
		/*@RequestMapping("/sign")
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
		}*/
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
			

			
			m.addAttribute("u",a);
			HttpSession session = request.getSession();
			session.setAttribute("username", u.getUsername());
			//session.setAttribute("u", a);
			//session.getAttribute("username");
			return "familytree";
		}
		else 
		{
			return "loginfail";
		}	
			
		} 
		
		@RequestMapping("/genxin")
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
			
	     
		return "familytree";	
			
		
		
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
		@RequestMapping("worship")
		public String worship(HttpSession session,Model m)
		{
			String username = (String) session.getAttribute("username");
			User b = uservice.findUniqueBy("username", username);	
			return "worship";	
		}
		@RequestMapping("buy")
		public String buy(HttpSession session,Model m)
		{
			String username = (String) session.getAttribute("username");
			User b = uservice.findUniqueBy("username", username);	
			return "buy";	
		}
		@RequestMapping("account")
		public String account(HttpSession session,Model m)
		{
			String username = (String) session.getAttribute("username");
			User b = uservice.findUniqueBy("username", username);	
			return "account";	
		}
		@RequestMapping("texiao")
		public String texiao(HttpSession session,Model m)
		{
			String username = (String) session.getAttribute("username");
			User b = uservice.findUniqueBy("username", username);	
			return "texiao";	
		}
		@RequestMapping("mydistribution")
		public String famDistri(HttpSession session,Model m) {
			String username = (String) session.getAttribute("username");
			User b = uservice.findUniqueBy("username", username);
	        int fid=b.getFamilyId();
	        List<User> myFamily=uservice.findBy("familyId", fid);
	        List<String> distr=new ArrayList();
	        for(int i=0;i<myFamily.size();i++)
	        {
	        	distr.add(myFamily.get(i).getLocation());
	        }
	 
			//以下统计各省人数；
	        int bj=0;
	        int tj=0;
	        int sh=0;
	        int cq=0;
	        int heb=0;
	        int hen=0;
	        int yn=0;
	        int ln=0;
	        int hlj=0;
	        int hn=0;
	        int ah=0;
	        int sd=0;
	        int xj=0;
	        int js=0;
	        int zj=0;
	        int jx=0;
	        int hub=0;
	        int gx=0;
	        int gs=0;
	        int sx=0;
	        int nmg=0;
	        int ssx=0;
	        int jl=0;
	        int fj=0;
	        int gz=0;
	        int gd=0;
	        int qh=0;
	        int xz=0;
	        int sc=0;
	        int nx=0;
	        int han=0;
	        int tw=0;
	        int xg=0;
	        int am=0;
	        
	        
	        
	        for(int i=0;i<distr.size();i++)
	        {
	        	if(distr.get(i).equals("北京"))
	        		bj++;
	        	if(distr.get(i).equals("天津"))
	        		tj++;
	        	if(distr.get(i).equals("上海"))
	        		sh++;
	        	if(distr.get(i).equals("重庆"))
	        		cq++;
	        	if(distr.get(i).equals("河北"))
	        		heb++;
	        	if(distr.get(i).equals("河南"))
	        		hen++;
	        	if(distr.get(i).equals("辽宁"))
	        		ln++;
	        	if(distr.get(i).equals("黑龙江"))
	        		hlj++;
	        	if(distr.get(i).equals("湖南"))
	        		hn++;
	        	if(distr.get(i).equals("安徽"))
	        		ah++;
	        	if(distr.get(i).equals("山东"))
	        		sd++;
	        	if(distr.get(i).equals("新疆"))//
	        		xj++;
	        	if(distr.get(i).equals("江西"))
	        		jx++;
	        	if(distr.get(i).equals("湖北"))
	        		hub++;
	        	if(distr.get(i).equals("广西"))
	        		gx++;
	        	if(distr.get(i).equals("甘肃"))
	        		gs++;
	        	if(distr.get(i).equals("山西"))
	        		sx++;
	        	if(distr.get(i).equals("内蒙古"))
	        		nmg++;
	        	if(distr.get(i).equals("陕西"))
	        		ssx++;
	        	if(distr.get(i).equals("吉林"))
	        		jl++;
	        	if(distr.get(i).equals("福建"))
	        		fj++;
	        	if(distr.get(i).equals("贵州"))
	        		gz++;
	        	if(distr.get(i).equals("广东"))
	        		gd++;
	        	if(distr.get(i).equals("青海"))
	        		qh++;
	        	if(distr.get(i).equals("西藏"))
	        		xz++;
	        	if(distr.get(i).equals("四川"))
	        		sc++;
	        	if(distr.get(i).equals("宁夏"))
	        		nx++;
	        	if(distr.get(i).equals("海南"))
	        		han++;
	        	if(distr.get(i).equals("台湾"))
	        		tw++;
	        	if(distr.get(i).equals("香港"))
	        		xg++;
	        	if(distr.get(i).equals("澳门"))
	        		am++;
	        	if(distr.get(i).equals("浙江"))
	        		zj++;
	        	if(distr.get(i).equals("江苏"))
	        		js++;
	        	if(distr.get(i).equals("云南"))
	        		yn++;	
	        }
	      
	      List <Integer> num=new ArrayList();
	      num.add(bj);
	      num.add(tj);
	      num.add(sh);
	      num.add(cq);
	      num.add(heb);
	      num.add(hen);
	      num.add(yn);
	      num.add(ln);
	      num.add(hlj);
	      num.add(hn);
	      num.add(ah);
	      num.add(sd);
	      num.add(xj);
	      num.add(js);
	      num.add(zj);
	      num.add(jx);
	      num.add(hub);
	      num.add(gx);
	      num.add(gs);
	      num.add(sx);
	      num.add(nmg);
	      num.add(ssx);
	      num.add(jl);
	      num.add(fj);
	      num.add(gz);
	      num.add(gd);
	      num.add(qh);
	      num.add(xz);
	      num.add(sc);
	      num.add(nx);
	      num.add(han);
	      num.add(tw);
	      num.add(xg);
	      num.add(am);

	      
	      m.addAttribute("uu",num);
			return "distribution";
		}
		
		@RequestMapping(value="/orgin",produces="text/html;charset=utf-8;")
		public @ResponseBody() String orgin(String arg,HttpServletResponse response)
		{
			FNorgin a=new FNorgin();
			String res = a.FNOsearch(arg);
			System.out.print(res);
			
			return res;
		}
		
		@RequestMapping("/test1")
		public String te()
		{
	
			return "test1";
		}

@RequestMapping("move")
	public String famove(HttpSession session, Model m) {
		return "move";
	}
	
	@RequestMapping("china")
	public String famchi(HttpSession session, Model m) {
		return "china";
	}
	
	@RequestMapping("raida")
	public String famrai(HttpSession session, Model m) {
		return "raida";
	}
	@RequestMapping("health")
	public String famhel(HttpSession session, Model m) {
		return "health";
	}
		@RequestMapping("/age")
		public String myrechar(HttpSession session, Model m) throws ParseException {

			String username = (String) session.getAttribute("username");
			User b = uservice.findUniqueBy("username", username);
			int fid = b.getFamilyId();
			List<User> myFamily = uservice.findBy("familyId", fid);
			List<Date> birth = new ArrayList();
			for (int i = 0; i < myFamily.size(); i++) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				java.util.Date date = sdf.parse(myFamily.get(i).getBirthday());
				birth.add(date);
			}

			int six = 0;
			int seven = 0;
			int eight = 0;
			int nine = 0;
			int oo = 0;
			int eld = 0;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date date00 = sdf.parse("2000-01-01");
			java.util.Date date90 = sdf.parse("1990-01-01");
			java.util.Date date80 = sdf.parse("1980-01-01");
			java.util.Date date70 = sdf.parse("1970-01-01");
			java.util.Date date60 = sdf.parse("1960-01-01");
			for (int i = 0; i < birth.size(); i++) {
		
				if (birth.get(i).after(date00))
					oo++;
				else if (birth.get(i).after(date90))
					nine++;
				else if (birth.get(i).after(date80))
					eight++;
				else if (birth.get(i).after(date70))
					seven++;
				else if (birth.get(i).after(date60))
					six++;
				else
					eld++;
			}

	      List<Integer> age=new ArrayList();
	      age.add(oo);
	      age.add(nine);
	      age.add(eight);
	      age.add(seven);
	      age.add(six);
	      age.add(eld);
	      m.addAttribute("uu",age);
		  return "myage";
		  

		}
		
		@RequestMapping("/FamilyActivity")
		public String toActivity(){
			return "familyac";
		}
		
		
		@RequestMapping(value="/sign",method=RequestMethod.POST)
		public String sign(Model m, User u,HttpServletRequest request) {
			int i;
			i = uservice.countBy("o.username = ?", new Object[] { u.getUsername() });
			if (i == 1)
				return "Userexist";
			else {
				List<User> tmpUser = uservice.find("from User where firstname=? and lastname=?", u.getFirstname(),u.getLastname());
				if(tmpUser.size()!=0){
					List<sameNameFamily> snfs = new ArrayList<sameNameFamily>();
					HttpSession session = request.getSession();
					
					List<Integer> fmyIds = new ArrayList<Integer>();
					//List<User> theFamily = new ArrayList<User>();
					for (int j = 0; j < tmpUser.size(); j++) {
						sameNameFamily snf = new sameNameFamily();
						System.out.println("你好"+tmpUser.size()+tmpUser.get(j).getSex());
						//theFamily.add(tmpUser.get(j));
						//设置familyId
						if (tmpUser.get(j).getFamilyId()==null) {
							snf.setFamilyId(0);
						}else {
							snf.setFamilyId(tmpUser.get(j).getFamilyId());
						}
						
						//设置同名者姓名
						snf.setName(tmpUser.get(j).getFirstname()+tmpUser.get(j).getLastname());
						//设置同名者生日
						if(tmpUser.get(j).getBirthday()==null) {
							snf.setBirthday("未知");
						}else {
							snf.setBirthday(tmpUser.get(j).getBirthday());
						}
						//设置籍贯
						if(tmpUser.get(j).getNativeplace()==null){
							snf.setNativePlace("未知");
						}else {
							snf.setNativePlace(tmpUser.get(j).getNativeplace());
						}
						//设置同名者父亲（姓名，生日）
						if(tmpUser.get(j).getFatherId()==0){
							snf.setFatherName("未知");
							snf.setFatherBirthday("未知");
						}else{
							User theFather = uservice.findUniqueBy("id", tmpUser.get(j).getFatherId());
							if(theFather.getBirthday()==null) {
								snf.setFatherBirthday("未知");
							}else {
								snf.setFatherBirthday(theFather.getBirthday());
							}
							snf.setFatherName(theFather.getFirstname()+theFather.getLastname());
						}
						//设置同名者性别
						if(tmpUser.get(j).getSex()==true) {
							snf.setSex("男");
						}else {
							snf.setSex("女");
						}
						snfs.add(snf);
						fmyIds.add(tmpUser.get(j).getFamilyId());
						
						
						
					}
					for (int j = 0; j < snfs.size(); j++) {
						System.out.println(snfs.get(j).getSex());
					}
					m.addAttribute("snfs",snfs);
					session.setAttribute("fmyIds", fmyIds);
					session.setAttribute("user", u);
					m.addAttribute("u", u);
					return "showAdvice";
				}
				u.setFatherId(0);
				u.setFamilyId(0);
				uservice.save(u);
				HttpSession session = request.getSession();
				session.setAttribute("username", u.getUsername());
				session.setAttribute("u", u);
				m.addAttribute("u", u);
				return "familytree";
			}
		}
		
		@RequestMapping("/tosign1/{fid}")
		public String tosign1(@PathVariable int fid,HttpSession session,Model m){
			User current = (User) session.getAttribute("user");
			System.out.println(fid);
			//User u = uservice.findUniqueBy("username", current);
			m.addAttribute("u", current);
			m.addAttribute("fmyId", fid);
			session.setAttribute("fmyId", fid);
			return "updateInfo";
		}
		//加入已存在家庭的注册
		@RequestMapping(value="/sign1",method=RequestMethod.POST)
		public String sign1(Model m, User u, HttpSession session)
	 {
			//List<Integer> fmyIds = (List<Integer>) session.getAttribute("fmyIds");
			
			List<User> users = uservice.find("from User where familyId=? and lastname=?",session.getAttribute("fmyId"), u.getLastname());
			User user = users.get(0);
			user.setBirthday(u.getBirthday());
			user.setEmail(u.getEmail());
			//user.setFamilyId(fmyIds.get(0));
			user.setPassword(u.getPassword());
			user.setSex(u.getSex());
			user.setUsername(u.getUsername());
			user.setLocation(u.getLocation());
			user.setNativeplace(u.getNativeplace());
			uservice.update(user);
			session.setAttribute("username", u.getUsername());
			//m.addAttribute("u", user);
			return "familytree";
		}
		
		@RequestMapping("/tosign2")
		public String tosign2(HttpSession session,Model m){
			User current = (User) session.getAttribute("user");
			//User u = uservice.findUniqueBy("username", current);
			m.addAttribute("u", current);
			return "updateInfo2";
		}
		//拒绝加入已存在家庭的注册
		@RequestMapping(value="/sign2",method=RequestMethod.POST)
		public String sign2(Model m, User u,HttpSession session) {
			
			u.setFamilyId(0);
			u.setFatherId(0);
			
			uservice.save(u);
			session.setAttribute("username", u.getUsername());
			m.addAttribute("u", u);
			return "familytree";
		}
		@RequestMapping("/signalmainpage")
		public String signalmainpage(Model m,int username,HttpSession session)
		{
			/*System.out.print(username);*/
			User a=uservice.findUniqueBy("id", username);
			session.setAttribute("tmp", username);
			/*System.out.print(a.getFirstname());*/
			m.addAttribute("u",a);
			return "signalmainpage";
		}//username为一个int类型，为当前节点的id。虚拟用户有真实用户创建，不会存在没有id的情况。
		
		@RequestMapping("/signalmainpage2")
		public String signalmainpage2(Model m,HttpSession session)
		{
			/*System.out.print(username);*/
			String b = (String) session.getAttribute("username");
			
			
			
			User a=uservice.findUniqueBy("username", b);
			Family c = new Family();
			c.setFirstname(a.getFirstname());
			fservice.save(c);
			a.setFamilyId(c.getId());
			uservice.update(a);
			session.setAttribute("tmp", a.getId());
			/*System.out.print(a.getFirstname());*/
			m.addAttribute("u",a);
			return "signalmainpage";
		}
		
		
		
		@RequestMapping("/toaddbrothers")
		public String toaddbrothers(Model m, User u,HttpSession session){
			System.out.println("nima");
			int current=(Integer) session.getAttribute("tmp");
			User a=uservice.findUniqueBy("id", current);
			u.setFamilyId(a.getFamilyId());
			u.setFatherId(a.getFatherId());
			uservice.save(u);
			return "familytree";
		}
		
		
		@RequestMapping("/toaddparents")
		public String toaddparents(Model m, User u,HttpSession session){
			int current=(Integer) session.getAttribute("tmp");
			System.out.println(current);
			System.out.println(123456);
			
			User a=uservice.findUniqueBy("id", current);
			//System.out.print(u);
			
			if(a.getFatherId()==1)
			{
				
				List<User> userr = uservice.findBy("fatherId", a.getFatherId());
				u.setFatherId(0);//添加父亲时，fatherid=0
				u.setFamilyId(a.getFamilyId());
				uservice.save(u);
				User d = uservice.findUniqueBy("id", 1);
				d.setFamilyId(0);
				uservice.update(d);
				for(User user:userr)
				{
					user.setFatherId(u.getId());
					
				}
				
				
				a.setFatherId(u.getId());
				uservice.update(a);
				
				
				
				
				
			}
			
			
			u.setFatherId(0);//添加父亲时，fatherid=0
			u.setFamilyId(a.getFamilyId());
			uservice.save(u);
			a.setFatherId(u.getId());
			uservice.update(a);
			return "familytree";
		}
		@RequestMapping("/toaddsons")
		public String toaddsons(Model m, User u,HttpSession session){
			int current=(Integer) session.getAttribute("tmp");
			System.out.println(current);
			System.out.println(123456);
			User a=uservice.findUniqueBy("id", current);
			//System.out.print(u);
			
			u.setFatherId(a.getId());//添加父亲时，fatherid=0
			u.setFamilyId(a.getFamilyId());
			uservice.save(u);
			//a.setFatherId(u.getId());
			//uservice.update(a);
			return "familytree";
		}
		
		
		
		
		
		@RequestMapping("/addbrothers")
		public String addbrothers(HttpSession session){
			int current=(Integer) session.getAttribute("tmp");
			System.out.println(current);
			return "addbrothers";
		}
		
		@RequestMapping("/addparents")
		public String addparents(HttpSession session){
			int current=(Integer) session.getAttribute("tmp");
			System.out.println(current);
			return "addparents";
		}
		@RequestMapping("/addsons")
		public String addsons(HttpSession session){
			int current=(Integer) session.getAttribute("tmp");
			System.out.println(current);
			return "addsons";
		}
		
		
		
		
	}

