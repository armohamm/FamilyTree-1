<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>客从何处来-个人主页</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
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
			<div class="inner"></div>

			</section>

			<!-- Section -->
			<h4>个人信息</h4>
			<!需要读取数据库内容>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<td>用户名</td>
							<td>${u.username }</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>姓氏</td>
							<td>${u.firstname}</td>
						</tr>
						<tr>
							<td>名字</td>
							<td>${u.lastname }</td>
						</tr>
						<tr>
							<td>生日</td>
							<td>${u.birthday }</td>
						</tr>

						<tr>
							<td>邮箱</td>

							<td>${u.email }</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"></td>
						</tr>
					</tfoot>
				</table>
				<div class="content">
					<ul class="actions">
						<input type="button" class="button big" value="添加父母信息"
							onclick="javascrtpt:window.location.href='addparents'">
					</ul>
					<ul class="actions">
						<input type="button" class="button big" value="添加子女信息"
							onclick="javascrtpt:window.location.href='addsons'">
					</ul>
					<ul class="actions">
						<input type="button" class="button big" value="添加兄弟姐妹信息"
							onclick="javascrtpt:window.location.href='addbrothers'">
					</ul>

					


				</div>
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
