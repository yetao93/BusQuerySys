<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bottom.css" rel="stylesheet" type="text/css"/>
<title>站点的详细信息</title>
<style type="text/css">
tr {
    height: 50px;
}
</style>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png"/></a>
	<table style="position: absolute; top: 33%; left: 33%; width: 500px;">
		<tr>
			<td style="width: 17%;" class="bottom">站点编号</td>
			<td style="width: 26%;" class="bottom">站点名称</td>
			<td class="bottom">经过线路</td>
		</tr>
		<tr>
			<td><s:property value="station.st_id" /></td>
			<td><s:property value="station.st_name" /></td>
			<td><s:iterator value="routes">
					<a href="getStByRoId?route_id=${route_id}"><s:property
							value="route_name" /> <s:property value="fe" /> </a>
					<br />
				</s:iterator></td>
		</tr>
	</table>
</body>
</html>