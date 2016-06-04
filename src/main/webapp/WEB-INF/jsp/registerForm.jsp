<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增管理员</title>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	
	<form method="post" action="register">
		<table style="position: absolute; left: 42%; top: 34%; width: 18%; height: 22%;">
			<tr>
				<td colspan="2" style="background-color: #efefef;">基本信息</td>
			</tr>
			<tr>
				<td>名称：</td>
				<td><input type="text" name="admin.name" /><font
					style="color: red;">*</font></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="text" name="admin.password" /><font
					style="color: red;">*</font></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input type="submit" value="注册" />
				<input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>
</body>
</html>