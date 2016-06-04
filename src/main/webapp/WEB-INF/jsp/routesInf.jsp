<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>双线路的详细信息</title>
<script type="text/javascript">
	window.onload = function() {
		var a = document.getElementsByTagName("a");
		for (var i = 0; i < a.length; i++) {
			a[i].setAttribute("onclick", "show(" + i + ")");
		}
	}

	function show(i) {
		var a = document.getElementsByTagName("a")[i];
		var b = document.getElementsByClassName("sts")[i];
		a.style.display = "none";
		b.style.display = "block";

	}
</script>
<style type="text/css">
li {
	float: left;
	font-size: 19px;
	list-style: outside none none;
	width: 26px;
}

.sts {
	display: none;
	left: 24%;
	position: relative;
}
</style>
</head>
<body>
	<img alt="无法显示图片" src="pic/logo.png" />
	<s:iterator value="ros1">
		<table style="position: absolute; width: 20%; left: 40%;">
			<tr>
				<td><a href="javascript:void(0)">
				<s:property value="key.route_name" /> <s:property value="key.fe" /></a></td>
			</tr>
		</table>
		<br />
		<table style="width: 60%;" id="a" class="sts">
			<tr>
				<td style="width: 80px;">线路名称：</td>
				<td style="width: 270px;"><s:property value="key.route_name" />
					<s:property value="key.fe" /></td>
				<td style="width: 80px;">运营时间：</td>
				<td style="width: 120px;"><s:property value="key.route_period" /></td>
				<td>沿线站点：</td>
			</tr>
			<tr>
				<td colspan="7">
					<ul style="position: relative; left: -2%;">
						<s:iterator value="value" var="b">
							<li><s:property value="st_name" /></li>
						</s:iterator>
					</ul>
				</td>
			</tr>
		</table>
		<br />
	</s:iterator>
</body>
</html>