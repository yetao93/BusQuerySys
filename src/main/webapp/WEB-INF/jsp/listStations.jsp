<%@ page contentType="text/html; charset=UTF-8" language="java"
	errorPage=""%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>全部车站</title>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<center>
		<table width="400">
			<tr>
				<td colspan="4"><h2 style="text-align: center;">全部车站</h2></td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: right; font-size: 18px;"><a
					href="stationForm">添加</a> <a href="manager">返回</a></td>
			</tr>
		</table>
		<table style="position: absolute; left: 10%;">
			<s:iterator value="stations" status="st">
				<s:if test="#st.getIndex()%3==0">
					<tr>
						<td><s:property value="st_id" /></td>
						<td><a href="getRoBySt?st_id=${st_id}"> <s:property
									value="st_name" /></a></td>
						<td width="60"><a
							href="updateSt?st_id=${st_id}&st_name=${st_name}">修改</a></td>
						<td width="60"><a href="deleteStation?st_id=${st_id}">删除</a></td>
					</tr>
				</s:if>
			</s:iterator>
		</table>
		<table>
			<s:iterator value="stations" status="st">
				<s:if test="#st.getIndex()%3==1">
					<tr>
						<td><s:property value="st_id" /></td>
						<td><a href="getRoBySt?st_id=${st_id}"> <s:property
									value="st_name" /></a></td>
						<td width="60"><a
							href="updateSt?st_id=${st_id}&st_name=${st_name}">修改</a></td>
						<td width="60"><a href="deleteStation?st_id=${st_id}">删除</a></td>
					</tr>
				</s:if>
			</s:iterator>
		</table>
		<table style="position: absolute; top: 42%; left: 66%;">
			<s:iterator value="stations" status="st">
				<s:if test="#st.getIndex()%3==2">
					<tr>
						<td><s:property value="st_id" /></td>
						<td><a href="getRoBySt?st_id=${st_id}"> <s:property
									value="st_name" /></a></td>
						<td width="60"><a
							href="updateSt?st_id=${st_id}&st_name=${st_name}">修改</a></td>
						<td width="60"><a href="deleteStation?st_id=${st_id}">删除</a></td>
					</tr>
				</s:if>
			</s:iterator>
		</table>
	</center>
</body>
</html>
