<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>客从何处来—购买页面</title>
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
									<a href="/FamilyTree/user/familytree" class="logo"><strong>客</strong>从何处来</a>
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
										<h1>购买</h1>
									</header>

					

							<!-- Section -->
								<section>
									<header class="major">
										<h2>共有以下六种祭品</h2>
									</header>
                                    
									<div class="posts">
										<article>
											<a href="#" class="image"><img src="../img/p00.jpg" alt="" /></a>
											<h3>香炉</h3>
											
											
										</article>
										<article>
											<a href="#" class="image"><img src="../img/p01.jpg" alt="" /></a>
											<h3>美酒</h3>
										
											
										</article>
										<article>
											<a href="#" class="image"><img src="../img/p02.jpg" alt="" /></a>
											<h3>水果</h3>
											
											
										</article>
										<article>
											<a href="#" class="image"><img src="../img/p03.jpg" alt="" /></a>
											<h3>牲畜</h3>
											
										</article>
										<article>
											<a href="#" class="image"><img src="../img/p04.jpg" alt="" /></a>
											<h3>纸钱</h3>
											
										</article>
										<article>
											<a href="#" class="image"><img src="../img/p05.jpg" alt="" /></a>
											<h3>骨灰盒</h3>
											
										</article>
               
  <article>
                                       <form role="form">
                              
                                <label for="name">选择购买祭品种类</label><!得到所选种类（单价）>
                                  <select class="form-control" id="items">
                                    <option value="20">香炉   ¥20/个</option>
                                    <option value="10">美酒   ¥10/个</option>
                                    <option value="12">水果   ¥12/个</option>
                                    <option value="20">牲畜   ¥20/个</option>
                                    <option value="2">纸钱   ¥2/个</option>
                                    <option value="10">骨灰盒 ¥10/个</option>
                                  </select>
                                  <label for="name">选择购买祭品数量</label><!得到所选数量>
                                  <select class="form-control" id="numbers">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                  </select>
                                  </form>
                       </article>
                       </div>
                       </section>
									
                           
                           
                           
                            <section id="banner">
					
                                    <div class="content">
										
							  
                         

                                         
                                        
                          
                            <script>
                            var account=90;//应该从数据库中读取用户账户余额
							var myselect=document.getElementById("items");
							var index=myselect.selectedIndex ;  
							var a=myselect.options[index].value;
							var ms=document.getElementById("numbers");
							var ix=ms.selectedix ;  
							var b=ms.options[ix].value;
							var c=account-(a*b);
							;//存入数据库
                
						    </script>
                             <script>
                            var str="hhhhhh";
                           str=(c<0)?"您需要充值":"购买成功";
							function enough(){
                            alert (str);	
                             }
                            </script>                         
                              <ul class="actions">
							
                            <input type="button" class="button big" value="购买" onClick="enough()">
										</ul>
                           
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
												<li><a href="/FamilyTree/user/familytree">族谱</a></li>
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
                                        <li><a href="/FamilyTree/user/test1">姓氏起源</a></li>
										<li>
											<span class="opener">家族活动</span>
											<ul>
												<li><a href="mydistribution">家庭成员分布</a></li>
												<li><a href="/FamilyTree/user/health">遗传病史</a></li>
												<li><a href="/FamilyTree/user/china">家族匹配</a></li>
                                                <li><a href="FamilyActivity">发起家庭活动</a></li>
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
									<p class="copyright">&copy; Untitled. All rights reserved. Demo img: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
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
