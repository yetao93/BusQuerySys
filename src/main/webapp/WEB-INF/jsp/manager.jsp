<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<style type="text/css">
td {
	text-align: center;
}
</style>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png"/></a>
	<br />
	<table style="top: 31%; position: absolute; height: 26%; width: 40%; left: 31%;">
		<tr>
			<td colspan="2" style="border-bottom: medium inset;"><h3>欢迎管理员${administrator}，<a href="logout.action">退出</a></h3></td>
		</tr>
		<tr>
			<td><a href="listStations">列出所有站点</a></td>
			<td><a href="listRoutes">列出所有线路</a></td>
		</tr>
		<tr>
			<td><a href="listForums">查看留言板</a></td>
			<td><a href="registerForm">新增管理员</a></td>
		</tr>
	</table>
</body>
</html>