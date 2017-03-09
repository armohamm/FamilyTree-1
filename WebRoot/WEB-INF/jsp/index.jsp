<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>主页</title>
		<meta charset="utf-8" />		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/bootstrap.css">
		<script src="../assets/js/jquery-3.1.1.min.js"></script>
		<script src="../assets/js/bootstrap.js"></script>
  </head>
  
  <body class="loading">
   <div id="wrapper">
			<div id="bg"></div>
			<div id="overlay"></div>
			<div id="main">
				
				<!-- Header -->
					<header id="header">
						<h1>客从何处来</h1>
						<p>家族记忆 &nbsp;&bull;&nbsp;历史传承 &nbsp;&bull;&nbsp; 落叶归根</p>
						<nav>
							<ul>
									
									<li><a data-toggle="modal" href="#myModal" class="icon fa-lock"></a></li>
								 	<li><a href="tologin" class="icon fa-lock"></a></li>
                                    <li><a href="#" class="icon fa-weibo"><span class="label">weibo</span></a></li>
									<li><a href="#" class="icon fa-wechat"><span class="label">wechat</span></a></li>
									<li><a href="#" class="icon fa-qq"><span class="label">qq</span></a></li>
									<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
							</ul>
						</nav>
					</header>
			</div>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            </div>
            <div class="modal-body">在这里添加一些文本</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        	</div><!-- /.modal-content -->
    	</div><!-- /.modal -->
		</div>
		
		<div id="loginmodal" style="display:none;">
    		<h1>User Login</h1>
		    <form id="loginform" name="loginform" method="post" action="index.html">
		      <label for="username">Username:</label>
		      <input type="text" name="username" id="username" class="txtfield" tabindex="1">
		      <label for="password">Password:</label>
		      <input type="password" name="password" id="password" class="txtfield" tabindex="2">
		      <div class="center"><input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Log In" tabindex="3"></div>
		    </form>
		  </div>
		
		
		
		
		<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
		<script>
			window.onload = function() { document.body.className = ''; }
			window.ontouchmove = function() { return false; }
			window.onorientationchange = function() { document.body.scrollTop = 0; }
		</script>
  </body>
</html>
