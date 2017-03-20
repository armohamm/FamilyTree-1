<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>客从何处来—发起家族活动</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assetss/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assetss/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assetss/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assetss/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Wrapper -->
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
										<h1>家族活动</h1>
									</header>
									
									<title>留言列表 -- HoverTree</title>  
<style>  
.keleyitable {  
width: 800px;  
}  
  
.keleyitable table, td, th {  
border: 1px solid red;margin-top:10px;  
}  
.klytd {width:100px;text-align:right  
}  
.hvttd {  
width:500px}  
</style>  
  
</head>  
<body>  
<div style="margin:0px auto;" class="keleyitable"><h2>留言列表</h2>  
  
  
<table id="table">

<tr><td class="klytd"><b>留言人</b></td><td class="hvttd" id="time"><b>留言时间</b></td><td class="klytd"><b>留言时间</b></td></tr>
<tr><td class="klytd" id="name1"><b></b></td><td class="hvttd" id="content1"><b></b></td><td class="klytd" id="time1"><b></b></td></tr>
<tr><td class="klytd" id="name2"><b></b></td><td class="hvttd" id="content2"><b></b></td><td class="klytd" id="time2"><b></b></td></tr>
<tr><td class="klytd" id="name3"><b></b></td><td class="hvttd" id="content3"><b></b></td><td class="klytd" id="time3"><b></b></td></tr>    

</table>  
 <!-- <table>  
<tr><td class="klytd"><b>留言时间：</b></td><td class="hvttd"></td></tr>  
<tr><td class="klytd"><b>留言人：</b></td><td class="hvttd"></td></tr>    
<tr><td class="klytd"><b>内容：</b></td><td class="hvttd"></td></tr>   
</table>  
  
<table>  
<tr><td class="klytd"><b>留言时间：</b></td><td class="hvttd"></td></tr>  
<tr><td class="klytd"><b>留言人：</b></td><td class="hvttd"></td></tr>    
<tr><td class="klytd"><b>内容：</b></td><td class="hvttd"></td></tr>    
</table>   --> 

  
</div>  
  
									
									
	    
					
	              <table border=1 align='center'>
                
                    <tr>
                      <td>留言：</td>
                      <td><textarea rows="10" cols="30" id="txtcontent" ></textarea></td>
                    </tr>
                    <tr>
                    <td colspan="2" align='center'><input type='button' value='提交' onclick="loadXMLDoc(document.getElementById('txtcontent').value);"/>   
                    <input type='button' value='清除' />
                    </td>
                    </tr>
                  </table>

                     </section>
					

							<!-- Section -->
							
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
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>
<%session.setAttribute("a", "b");%>

		<!-- Scripts -->
			<script src="../assetss/js/jquery.min.js"></script>
			<script src="../assetss/js/skel.min.js"></script>
			<script src="../assetss/js/util.js"></script>
			<!--[if lte IE 8]><script src="assetss/js/ie/respond.min.js"></script><![endif]-->
			<script src="../assetss/js/main.js"></script>
			<script type="text/javascript">
	  
	  function getjson(){
	     $.ajax({
	        type:"get",
	        url:"../activity/newac",
	        dataType:"json",
	        success:function(msg){
	            alert("data saved:"+msg.username+"--"+msg.time);
	        }
	     });
	  }
	  
	  function loadXMLDoc(str){
	     $.post("../activity/newac2",{arg:str},function(data){
	         onPage();
	         
	         
	     })
	  }
	  
	  
	  
	</script>						
        <script type="text/javascript">
      function onPage(){   
      console.log('onPage', arguments);
      $.ajax({
	        type:"get",
	        url:"../activity/newac",
	        dataType:"json",
	        success:function(data){
	         //   alert("data saved");
	         //var table = document.getElementById("table");
	         //var tbody = table.tBodies.item(0)||table;
	         //for(var i=data.length-1,l=data.length;i>=l-3;i--){
	         //      alert(i);
	         //      var tr_row = document.createElement("tr");
	         //      var td_name = document.createElement("td");
	         //      var td_time = document.createElement("td");
	         //      var td_content = document.createElement("td");
	         //      td_name.innerText = data[i].name;
	         //      td_content.innerText = data[i].content;
	         //      td_time.innerText = data[i].time;
	         //      tr_row.appendChild(td_name);
	         //      tr_row.appendChild(td_content);
	         //      tr_row.appendChild(td_time);
	         //     tbody.appendChild(tr_row);
	               
	        //}
	        var i = data.length-1;
	        document.getElementById("name1").innerHTML = data[i].username;
	        document.getElementById("time1").innerHTML = data[i].time;
	        document.getElementById("content1").innerHTML = data[i].content;
	        i = i-1;
	        document.getElementById("name2").innerHTML = data[i].username;
	        document.getElementById("time2").innerHTML = data[i].time;
	        document.getElementById("content2").innerHTML = data[i].content;
	        i = i-1
	        document.getElementById("name3").innerHTML = data[i].username;
	        document.getElementById("time3").innerHTML = data[i].time;
	        document.getElementById("content3").innerHTML = data[i].content;
	        
	     }});
	         
	  }
	  $(document).ready(onPage);
        </script>
  </body>

</html>
