<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息完善</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="../assetss/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assetss/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="../assetss/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="../assetss/css/ie8.css" /><![endif]-->

  </head>
  
  <body>
    <!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="signalmainpage.html" class="logo"><strong>客</strong> 从何处来</a>
									<ul class="icons">
									  <li><a href="#" class="icon fa-weibo"><span class="label">weibo</span></a></li>
									  <li><a href="#" class="icon fa-wechat"><span class="label">wechat</span></a></li>
										<li><a href="#" class="icon fa-qq"><span class="label">qq</span></a></li>
										<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
										<li><a href="#" class="icon fa-paw"><span class="label">Baidu</span></a></li>
									</ul>
								</header>

							<!-- Banner -->
							

							<!-- Section -->
                            	<h4>个人信息修改与完善</h4>
					<div class="table-wrapper">
						<form  action="${pageContext.request.contextPath}/user/sign2" method="post">
						<div class = "form-group"> 
                          <label for = "Lastname">用户名</label>  
                          <input type = "text" class = "form-control" id = "Lastname"    
                           placeholder = "请输入名字" name="username" value="${u.username }"></input>  
                </div> 
						 <div class = "form-group"> 
                          <label for = "Firstname">姓</label>  
                          <input type = "text" class = "form-control" id = "Firstname"    
                           placeholder = "请输入姓氏" name="firstname" value="${u.firstname }"></input>  
                </div>  
                <div class = "form-group"> 
                          <label for = "Lastname">名</label>  
                          <input type = "text" class = "form-control" id = "Lastname"    
                           placeholder = "请输入名字" name="lastname" value="${u.lastname }"></input>  
                </div>  
                 <div class = "form-group"> 
               
                           <label for="name">性别</label>
                                  <select class="form-control" id="sex" name="sex">
                                    <option value="true">男</option>
                                    <option value="false">女</option>
                                  </select></div>
                <div class = "form-group"> 
                          <label for = "Birthday">生日</label>  
                          <input type = "Date" class = "form-control" id = "Birthday"    
                           placeholder = "请输入出生年月" name="birthday" value="${u.birthday }"></input>  
                </div>  
                
                
                
                <div class = "form-group"> 
                          <label for = "Password">密码</label>  
                          <input type = "text" class = "form-control" id = "Password"    
                           placeholder = "请输入修改过后的密码" name="password" value="${u.password }"></input>  
                </div> 
                <div class = "form-group"> 
                          <label for = "Email">邮箱</label>  
                          <input type = "text" class = "form-control" id = "Email"    
                           placeholder = "请输入邮箱地址" name="email" value="${u.email }"></input>  
                </div>  
                 <div class = "form-group"> 
                          <label for = "Address">居住地</label>  
                          <input type = "text" class = "form-control" id = "Address"    
                           placeholder = "请输入居住省市" name="location" value=""></input>  
                </div>  
                 <div class = "form-group"> 
                          <label for = "micile of origin">籍贯</label>  
                          <input type = "text" class = "form-control" id = "micile of origin"    
                           placeholder = "请输入籍贯" name="nativeplace" value=""></input>  
                </div>  
               
                
                
                
                 
                <div class="form-group">  
                    <button type = "submit" class="button big">提交</button>   
                </div>  </form>	
			</div>
	

		<!-- Scripts -->
			<script src="assetss/js/jquery.min.js"></script>
			<script src="assetss/js/skel.min.js"></script>
			<script src="assetss/js/util.js"></script>
			<!--[if lte IE 8]><script src="../assetss/js/ie/respond.min.js"></script><![endif]-->
			<script src="assetss/js/main.js"></script>
  </body>
</html>
