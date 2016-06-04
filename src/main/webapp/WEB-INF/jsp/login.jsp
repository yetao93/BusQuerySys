<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录页面</title>
<script type="text/javascript">
	function checkLogin() {
		var name = document.getElementsByName("admin.name")[0].value;
		var pwd = document.getElementsByName("admin.password")[0].value;
		if (name == "") {
			alert("用户名不能为空！");
			return false;
		} else if (pwd == "") {
			alert("密码不能为空！");
			return false;
		} else {
			return true;
		}
	}
	window.onload = function() {
		var input = "${input}";
		if (input.length!=0) {
			alert(input);
		}
	}
</script>
</head>
<body>
	<img alt="无法显示图片" src="pic/logo.png" />
	<br />
	<form action="check" method="post">
		<table
			style="position: absolute; width: 24%; height: 26%; left: 39%; top: 37%;">
			<tr>
				<td colspan="2" style="background-color: #efefef;">基本信息</td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="admin.name" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="admin.password" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="登录"
					onclick="return checkLogin()" /> <input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>
</body>
</html>