<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>客从何处来—家庭相册</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="../assetss/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assetss/css/main.css" />
  </head>
  
  <body>
    <div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>客</strong>从何处来</a>
									<ul class="icons">
										<li><a href="#" class="icon fa-weibo"><span class="label">weibo</span></a></li>
									    <li><a href="#" class="icon fa-wechat"><span class="label">wechat</span></a></li>
										<li><a href="#" class="icon fa-qq"><span class="label">qq</span></a></li>
										<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
										<li><a href="#" class="icon fa-paw"><span class="label">Baidu</span></a></li>
									</ul>
								</header>

							<!-- Content -->
								<section>
									<header class="main">
										<h1>家庭相册</h1>
									</header>

					

							<!-- Section -->
								<section>
									<header class="major">
										<h2>相片及简介</h2><!此处实现从数据库中读取图片地址并显示>
									</header>
                                    <section id="banner">
									<div class="content">
										<ul class="actions">
											<input type="button" class="button big" value="增加图片"
onclick="javascrtpt:window.location.href='/FamilyTree/image/addpicture'">
										</ul>
									</div>
                                    <div class="actions">
                              
										<ul class="actions">
											<input type="button" class="button big" value="删除图片"
onclick="javascrtpt:window.location.href='picture—.html'">
										</ul>
									</div>
									
								</section>
									<div class="posts">

										<c:forEach items="${uu}" var="pictures" varStatus="i">
										<article>
											<a href="#" class="image"><img src="${uu[i.index].img_url}"></a>
											<h3>#</h3>
											</article>
										</c:forEach>	
											
										<!-- 
										<article>
											<a href="#" class="image"><img src="#" alt="" /></a>
											<h3>#</h3>
										
											
										</article>
										<article>
											<a href="#" class="image"><img src="#" alt="" /></a>
											<h3>#</h3>
											
											
										</article>
										<article>
											<a href="#" class="image"><img src="#" alt="" /></a>
											<h3>#</h3>
											
										</article>
										<article>
											<a href="#" class="image"><img src="#" alt="" /></a>
											<h3>#</h3>
											
										</article>
										<article>
											<a href="#" class="image"><img src="#" alt="" /></a>
											<h3>#</h3>
											
										</article> -->
									</div>
								</section>

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
												<li><a href="/FamilyTree/user/shoumap">家庭成员分布</a></li>
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
			<script src="../assetss/js/main.js"></script>
  </body>
</html>
