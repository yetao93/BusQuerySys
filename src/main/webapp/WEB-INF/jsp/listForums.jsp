<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有评论</title>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<br />
	<table style="position: absolute; width: 30%; left: 35%;">
		<tr><td style="text-align: center; border-bottom: medium solid;" colspan="2"><h2>意见栏</h2></td></tr>
		<s:iterator value="forums">
			<tr>
				<td class="date"><s:property value="date" /></td>
				<c:if test="${administrator!=null }"><td><a href="answer?id=${id}">回复</a> <a
					href="delForum?id=${id}">删除</a></td></c:if>
			</tr>
			<tr>
				<td colspan="2">用户的留言：<s:property value="topic" /></td>
			</tr>
			<c:if test="${reply!=null }">
				<tr>
					<td colspan="2">管理员${author }：<s:property value="reply" /></td>
				</tr>
			</c:if>
			<tr>
				<td colspan="2" style="border-top: medium dotted;">&nbsp;</td>
			</tr>
		</s:iterator>
		<tr>
			<td colspan="2" style="text-align: right;"><a href="forumForm">提交意见</a></td>
		</tr>
	</table>

</body>
</html>