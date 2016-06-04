<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>回复留言</title>
<style type="text/css">
tr {
    height: 65px;
}
</style>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<center>
		<form action="updateForum" method="post">
			<table>
				<tr>
					<td>提出时间：</td>
					<td><input type="text" name="forum.date" style="width: 230px;"
						value="${forum.date }" readonly="readonly"/></td>
				</tr>
				<tr>
					<td>问题详情：</td>
					<td><textarea cols="25" name="forum.topic" readonly="readonly">${forum.topic }</textarea></td>
				</tr>
				<tr>
					<td>管理回复：</td>
					<td><textarea cols="25" name="forum.reply">${forum.reply}</textarea></td>
				</tr>
				<tr>
					<td><input type="hidden" name="forum.id" value="${forum.id }" />
						<input type="hidden" id="admin" name="forum.author"
						value="${administrator }" /></td>
					<td><input type="submit" value="提交" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>