<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'creatfmy.jsp' starting page</title>
    
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
    创建我的族谱 <br>
  <%= session.getAttribute("username") %>     
    <%= session.getAttribute("familyid") %>
   <a href="/FamilyTree/family/tocreatmem">添加成员</a>
   <a href="/FamilyTree/image/toupld">添加相片</a> 
   <a href="/FamilyTree/image/display">展示相片</a> 
    
    
    
    
    </form>
    
    
    
  </body>
</html>
