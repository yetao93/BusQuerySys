<%@ page contentType="text/html; charset=UTF-8" language="java"
	errorPage=""%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加路线</title>
<script src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath }/js/autoComplete.js"></script>
<script src="${pageContext.request.contextPath }/js/addColumn.js"></script>
</head>
<body>
<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<center>
		<h3>添加路线</h3>
		<form action="addRoute">
		<table id="column">
		<tr>
			<td>线路名：</td>
			<td><input type="text" name="route.route_name" /></td>
		</tr>
		<tr>
			<td>时间段：</td>
			<td><input type="text" name="route.route_period" /></td>
		</tr>
		<tr>
			<td>起始站：</td>
			<td><input type="text" name="st_names" id="st0" class="sts"/></td>
		</tr>
		<tr id="destination">
			<td>终点站</td>
			<td><input type="text" name="st_names" id="st1" class="sts" /></td>
		</tr>
		<tr>
			<td><input type="button" value="新增站点" onclick="addColumn()" /></td>
			<td align="right">
			<input type="submit" value="提交" />
			<input type="reset" value="重置" />
			</td>
		</tr>
		</table>
		</form>
	</center>

</body>
</html>
