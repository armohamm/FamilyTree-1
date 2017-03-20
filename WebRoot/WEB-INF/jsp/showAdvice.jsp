<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>提示界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!--用百度的静态资源库的cdn安装bootstrap环境-->
		<!-- Bootstrap 核心 CSS 文件 -->
		<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<!--font-awesome 核心我CSS 文件-->
		<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<!--jquery.validate-->
		<script type="text/javascript" src="js/jquery.validate.min.js" ></script>
	<style type="text/css">
			body{background: url(img/4.jpg) no-repeat;background-size: cover;font-size: 16px;}
			.form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}
			#login_form{display: block;}
			#register_form{display: none;}
			.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
			input[type="text"],input[type="password"]{padding-left:26px;}
			.checkbox{padding-left:21px;}
			#table1{width:40px;
			height:60px;
			text-align:center;
			border:#FF0000 1px solid;
			line-height:60px;
			font-size: 15}
		</style>

  </head>
  
  <body>
  <div class="posts">
    <c:forEach items="${snfs}" varStatus="i">
    	<article>
			<ul class="icons">
				<li><span class="label">已存在同名家庭${snfs[i.index].familyId}，是否加入</span></li>
				<li><span class="label">家庭号：${snfs[i.index].familyId}</span></li>
				<li><span class="label">同名者：${snfs[i.index].name}</span></li>
				<li><span class="label">性别：${snfs[i.index].sex}</span></li>
				<li><span class="label">生日：${snfs[i.index].birthday}</span></li>
				<li><span class="label">父亲：${snfs[i.index].fatherName}</span></li>
				<li><span class="label">父亲生日：${snfs[i.index].fatherBirthday}</span></li>
				<li><span class="label">籍贯：${snfs[i.index].nativePlace}</span></li>
				<li><a href="user/tosign1/${snfs[i.index].familyId}"><span class="label">加入</span></a>//<a href="user/tosign2"><span class="label">拒绝</span></a></li>
			</ul>
			<form action="" method="post">
			
			</form>
			<h3>#</h3>
		</article>
	</c:forEach>
  </div>
  </body>
</html>
