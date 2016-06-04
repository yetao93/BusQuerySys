<%@ page contentType="text/html; charset=UTF-8" language="java"
	errorPage=""%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加站点</title>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<center>
		<h3>添加站点</h3>
		<form action="addStation">
			<table style="width: 19%;">
				<s:textfield name="station.st_name" label="站名" />
				<tr>
					<td colspan="2" align="center"><s:submit value="添加"
							theme="simple" /> <s:reset value="重设" theme="simple" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
