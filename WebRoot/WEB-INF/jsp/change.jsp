<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>客从何处来-个人主页_修改个人信息</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assetss/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
  </head>
  
  <body>
    <div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="/FamilyTree/user/familytree" class="logo"><strong>客</strong> 从何处来</a>
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
                            						<h4>个人信息修改</h4>
													<div class="table-wrapper">
						<form action="${pageContext.request.contextPath}/user/update" method="post">						
													
						 <div class = "form-group"> 
                          <label for = "Firstname">姓</label>  
                          <input type = "text" class = "form-control" id = "Firstname"  name= "firstname" 
                           placeholder = "请输入姓氏"></input>  
                </div>  
                <div class = "form-group"> 
                          <label for = "Lastname">名</label>  
                          <input type = "text" class = "form-control" id = "Lastname"   name="lastname" 
                           placeholder = "请输入名字"></input>  
                </div>  
                <div class = "form-group"> 
                          <label for = "Birthday">生日</label>  
                          <input type = "Date" class = "form-control" id = "Birthday"    name="birthday"
                           placeholder = "请输入出生年月"></input>  
                </div>  
                <div class = "form-group"> 
                          <label for = "Password">密码</label>  
                          <input type = "text" class = "form-control" id = "Password"    name="password"
                           placeholder = "请输入修改过后的密码"></input>  
                </div> 
                <div class = "form-group"> 
                          <label for = "Email">邮箱</label>  
                          <input type = "text" class = "form-control" id = "Email"    name="email"
                           placeholder = "请输入邮箱地址"></input>  
                </div>  
                 <div class = "form-group"> 
                          <label for = "Address">居住地</label>  
                          <input type = "text" class = "form-control" id = "Address"   name="location" 
                           placeholder = "请输入居住省市"></input>  
                </div>  
                 <div class = "form-group"> 
                          <label for = "micile of origin">籍贯</label>  
                          <input type = "text" class = "form-control" id = "micile of origin"   name="nativeplace" 
                           placeholder = "请输入籍贯"></input>  
                </div>  
                
                
                
                 
                <div class="form-group">  
                    <button type = "submit" class="button big">提交</button>   
                </div>  	
                </form>	
				</div>
				<div class="6u$ 12u$(medium)">							
	            </div>
					</div>

	 
				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="搜索" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>菜单</h2>
									</header>
									<ul>
										<li>
											<span class="opener">家谱展示</span>
											<ul>
												><a href="/FamilyTree/user/familytree">族谱</a></li>
												<li><a href="#">册谱</a></li>
												<li><a href="/FamilyTree/image/photoalbum">家庭相册</a></li>
											</ul>
										</li>
                                        <li>
											<span class="opener">个人中心</span>
											<ul>
												<li><a href="/FamilyTree/user/adminpage">个人信息</a></li>
												<li><a href="/FamilyTree/user/mydistribution">家族分布</a></li>
												<li><a href="/FamilyTree/user/age">家族年龄结构</a></li>
												 <li><a href="/FamilyTree/user/move">家族历史迁移</a></li> 
                                         <li> <a href="/FamilyTree/user/china">同姓家族分布</a></li> 
                                         <li><a href="/FamilyTree/user/raida">查看家族属性</a></li> 
                                         <li><a href="/FamilyTree/user/health">查看家族健康信息</a></li> 
												
												<li><a href="/FamilyTree/user/worship">烧香祭拜</a></li>
											</ul>
										</li>
                                        <li><a href="origin.html">姓氏起源</a></li>
										<li>
											<span class="opener">家族活动</span>
											<ul>
												<li><a href="/FamilyTree/user/mydistribution">家庭成员分布</a></li>
												<li><a href="/FamilyTree/user/health">遗传病史</a></li>
												<li><a href="/FamilyTree/user/china">家族匹配</a></li>
                                                <li><a href="/FamilyTree/user/FamilyActivity">发起家庭活动</a></li>
											</ul>
										</li>
										
									</ul>
								</nav>

							<!-- Section -->

							<!-- Section -->
								<section>
									<header class="major">
										<h2>联系我们</h2>
									</header>
									<p>对于网站存在的功能作用有任何疑问，都可以拨打电话，发送邮件来联系我们</p>
									<ul class="contact">
										<li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
										<li class="fa-phone">(000) 000-0000</li>
										<li class="fa-home">1234 这条路 #8254<br />
										那个屯儿, TN 00000-0000</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="../assetss/js/jquery.min.js"></script>
			<script src="../assetss/js/skel.min.js"></script>
			<script src="../assetss/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../assetss/js/main.js"></script>

  </body>
</html>
