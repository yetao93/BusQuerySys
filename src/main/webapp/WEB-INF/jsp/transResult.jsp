<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>换乘查询</title>
<style type="text/css">
.top{
	border-bottom: inset;
}
</style>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<br />
	<table style="position: absolute; height: 30%; top: 34%; left: 28%; width: 44%;">
		<tr>
			<td style="width: 107px;" class="top">您查询的是:</td>
			<td style="width: 250px;" class="top">${start }--${destination }</td>
			<td class="top">乘坐线路：</td>
		</tr>
		<c:forEach var="m" items="${map}">
			<tr>
				<td colspan="3">
				<a href="getStByRoId?route_id=${m.key.route_id}">
					<c:out value="${m.key.route_name }" /><c:out value="${m.key.fe}" /></a>&nbsp;&nbsp;&nbsp;
					<c:forEach var="s" items="${m.value }" varStatus="status">
						<c:choose>
							<c:when test="${status.first }">
								<c:out value="${s.st_name }-->" />
							</c:when>
							<c:when test="${status.last }">
								<c:out value="${s.st_name}" />&nbsp;&nbsp;&nbsp;
								<c:out value="共${status.index}站"/>
							</c:when>
						</c:choose>
					</c:forEach></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>