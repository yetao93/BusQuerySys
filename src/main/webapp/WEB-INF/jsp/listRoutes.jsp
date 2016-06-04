<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>全部路线</title>
</head>
<body>
<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
<center>
<h3>全部路线</h3>
<table width="640">
	<tr>
		<td  colspan="4" align="right"><a href="routeForm">添加路线</a>
		<a href="manager">返回</a></td>
	</tr>
	<s:iterator value="routes" var="b">
		<tr>
			<td><s:property value="route_id"/></td>
			<td><a href="getStByRoId?route_id=${b.route_id}">
				<s:property value="route_name"/><s:property value="fe"/></a></td>
			<td width="60"><a href="queryAndUpdate?route_id=${b.route_id}">修改</a></td>
			<td width="60"><a href="deleteRoute?route_id=${b.route_id}">删除</a></td>
		</tr>
	</s:iterator>
</table>
</center>
</body>
</html>
