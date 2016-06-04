<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改线路信息</title>
<script src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath }/js/autoComplete.js"></script>
<script type="text/javascript">
	function shoumozhan() {
		var fe = document.getElementById("fe");
		var sts = document.getElementsByClassName("sts");
		var size = sts.length - 1;
		var sm = "(" + sts[0].value + " — " + sts[size].value + ")";
		fe.value = sm;
	}
</script>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<form action="updateRoute" method="post">
		<table style="position: absolute; left: 42%;">
			<tr>
				<td style="width: 82px;">线路名称：</td>
				<td><input type="text"
					value="<s:property value="route.route_name"/>"
					name="route.route_name" /></td>
			</tr>
			<tr>
				<td style="width: 82px;">运营时间：</td>
				<td><input type="text"
					value="<s:property value="route.route_period"/>"
					name="route.route_period" /></td>
			</tr>
			<s:iterator value="stations" var="b">
				<tr>
					<td style="width: 82px;">沿线站点：</td>
					<td><input type="text" value="<s:property value="st_name" />"
						name="st_names" class="sts" /></td>
				</tr>
			</s:iterator>
			<tr>
				<td colspan="2"><input type="hidden" value="该栏会自动生成" name="route.fe"
					id="fe" /> <input type="hidden"
					value="<s:property value="route.route_id"/>" name="route.route_id" />
					<input type="submit" value="提交" onclick="shoumozhan()" /> <input
					type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>
</body>
</html>