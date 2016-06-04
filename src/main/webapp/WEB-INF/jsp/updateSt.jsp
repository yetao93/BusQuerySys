<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改站点信息</title>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<form action="updateStation" method="post">
		<table style="position: absolute; left: 42%; top: 34%;">
			<tr>
				<td>站点编号：<input type="text" value="${param.st_id }"
					name="st_id" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>原名称：&nbsp;&nbsp; <input type="text"
					value="${param.st_name }" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>新名称：&nbsp;&nbsp; <input type="text" name="st_name" /></td>
			</tr>
			<tr>
				<td style="text-align: right;"><input type="submit" value="修改">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>