<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newmember.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    添加我的亲人 <br>
    <form method="post" action="${pageContext.request.contextPath}/family/creatmemsuc">
   	<table>
	<tr>
		<td>姓</td>
		<td><input type="text" name="firstname"></td>
	</tr>
	<tr>
		<td>名</td>
		<td><input type="text" name="lastname"></td>
	</tr>
	<tr>
	<tr>
		<td>出生年月</td>
		<td><input type="Date" name="birthday"></td>
	</tr>
	<tr>
	
	
		<td><input type="submit"></td>
		<td></td>
	</tr>
	</table>
  </form> 
    
    
    
    
    
    
    
  </body>
</html>
