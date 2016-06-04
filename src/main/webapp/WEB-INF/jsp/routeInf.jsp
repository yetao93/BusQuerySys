<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>单个线路的详细信息</title>
<style type="text/css">
li {
	float: left;
	font-size: 19px;
	list-style: outside none none;
	width: 26px;
}
</style>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<center>
		<table style="width: 60%;" id="a">
			<tr>
				<td width="11%">线路名称：</td>
				<td width="39%"><s:property value="route.route_name" />
					<s:property value="route.fe" /></td>
				<td width="11%">运营时间：</td>
				<td><s:property value="route.route_period" /></td>
				<td>沿线站点：</td>
			</tr>
			<tr>
				<td colspan="7">
					<ul style="position: relative; left: -2%;">
						<s:iterator value="stations" var="b">
							<li><a href="getRoBySt?st_id=${st_id}"><s:property
										value="st_name" /></a></li>
						</s:iterator>
					</ul>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>