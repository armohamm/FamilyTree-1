<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>

<html>
	<head>
		<title>客从何处来-个人主页_添加父母子女</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
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

                     <p>姓氏起源查询</p>       						
					 <script src="../assetss/js/jquery-1.4.4.min.js" type="text/javascript" ></script>								
					 <script>   
     			 function loadXMLDoc(str){
   					 $.post("orgin",{arg:str},function(data){
    				 //alert(data);
     				var object=JSON.parse(data);
     				document.getElementById("demo").innerHTML=object.result.intro;
   						 });
  							 }

					</script>								
               
                            <div class = "form-group"> 
                            <form >
    						 <input type="text"	name="txt1" id="txt1"/>
    
   							 <input type="button" value="查询" onclick="loadXMLDoc(document.getElementById('txt1').value)" />
    						</form></div>  
                
                  <div id="demo"></div>
                </div>
            </div>
                 
              
                    
	 

							<!-- Section -->

							<!-- Section -->
								


		<!-- Scripts -->
			<script src="../assetss/js/jquery.min.js"></script>
			<script src="../assetss/js/skel.min.js"></script>
			<script src="../assetss/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../assetss/js/main.js"></script>

	</body>
</html>