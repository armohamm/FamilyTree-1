<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>客从何处来-个人主页</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="../assetss/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assetss/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
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
								<section id="banner">
									<div class="content">
										<ul class="actions">
											<input type="button" class="button big" value="修改个人信息"
onclick="javascrtpt:window.location.href='newinfo'">
										</ul>
									
                              
										<ul class="actions">
											<input type="button" class="button big" value="修改家庭信息"
onclick="javascrtpt:window.location.href='newtree'"><!此处加入增删改查家庭成员功能>
										</ul>
									</div>
									
								</section>

						 	<!-- Section -->
							              <h4>个人信息</h4><!需要读取数据库内容>
													<div class="table-wrapper">
														<table>
															<thead>
																<tr>
																	<td>用户名</td>
																	<td>${u.username}</td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>姓氏</td>
																	<td>${u.firstname}</td>
																</tr>
																<tr>
																	<td>名字</td>
																	<td>${u.lastname}</td>
																</tr>
																<tr>
																	<td>生日</td>
																	<td>${u.birthday}</td>
																</tr>
															<!-- 	<tr>
																	<td>密码</td>
																	<td>Password</td>
																</tr> -->
																<tr>
																	<td>邮箱</td>
																	<td>${u.email}</td>
																</tr>
															</tbody>
															<tfoot>
																<tr>
																	<td colspan="2"></td>
																</tr>
															</tfoot>
														</table>
													

																				
<h4>此处应连接数据库实现n个家庭成员信息的显示</h4><!需要读取数据库内容>
											<!-- 		<div class="table-wrapper">
														<table>
															<thead>
																<tr>
																	<td>用户名</td>
																	<td>Username</td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>姓氏</td>
																	<td>Firstname</td>
																</tr>
																<tr>
																	<td>名字</td>
																	<td>Lastname</td>
																</tr>
																<tr>
																	<td>生日</td>
																	<td> Birthday</td>
																</tr>
															<!-- 	<tr>
																	<td>密码</td>
																	<td>Password</td>
																</tr> -->
																<tr>
																	<td>邮箱</td>
																	<td>Email</td>
																</tr>
															</tbody>
															<tfoot>
																<tr>
																	<td colspan="2"></td>
																</tr>
															</tfoot>
														</table> -->
													</div>
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
												<li><a href="familytree.html">族谱</a></li>
												<li><a href="ftpicture.html">册谱</a></li>
												<li><a href="photoalbum.html">家庭相册</a></li>
											</ul>
										</li>
                                        <li>
											<span class="opener">个人中心</span>
											<ul>
												<li><a href="signalmainpage.html">个人信息</a></li>
												<li><a href="worship.html">烧香祭拜</a></li>
											</ul>
										</li>
                                        <li><a href="origin.html">姓氏起源</a></li>
										<li>
											<span class="opener">家族活动</span>
											<ul>
												<li><a href="showmap.html">家庭成员分布</a></li>
												<li><a href="disease.html">遗传病史</a></li>
												<li><a href="#">家族匹配</a></li>
                                                <li><a href="#">发起家庭活动</a></li>
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
			<!--[if lte IE 8]><script src="../assetss/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
   
   
   
  </body>
</html>
