<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>线路名称查询多个结果--unused</title>
</head>
<body>
<img alt="无法显示图片" src="pic/logo.png" /> <br />
<center>
<s:iterator value="ros">
<a href="getStByRoId?route_id=<s:property value="key"/>"><s:property value="value"/></a>
</s:iterator>
</center>
</body>
</html>