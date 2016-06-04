<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询页面</title>
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/autoCompleteForIndex.js"></script>
<link href="css/forIndex.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<div id="main">
		<div class="a d">
			<span>搜索线路</span>
		</div>
		<div class="a e">
			<span>搜索站点</span>
		</div>
		<div class="a f">
			<span>换乘查询</span>
		</div>
		<form action="getRoByName">
			<div class="b d">
				<input type="text" name="route.route_name" value="线路名称"
					onfocus="cl(this)"
					onblur="javascript:if(this.value=='') this.value='线路名称'"
					style="width: 100%" />
			</div>
			<div class="c d">
				<input type="submit" value="查询"/>
			</div>

		</form>
		<form action="getStByName">
			<div class="b e">
				<input type="text" class="sts" name="st_name" value="站点名称"
					onfocus="cl(this)"
					onblur="javascript:if(this.value=='') this.value='站点名称'"
					style="width: 100%" />
			</div>
			<div class="c e">
				<input type="submit" value="查询">
			</div>
		</form>
		<form action="transfer">
			<div class="b f">
				<input type="text" id="st1" class="sts" onfocus="cl(this)" value="起始站"
					onblur="javascript:if(this.value=='') this.value='起始站'"
					name="start" /> <span>--</span> <input type="text" id="st2" class="sts"
					name="destination" value="终点站" onfocus="cl(this)"
					onblur="javascript:if(this.value=='') this.value='终点站'" />
			</div>
			<div class="c f">
				<input type="submit" value="查询" onclick="return checkSts()"/>
			</div>
		</form>
	</div>

	<div id="secondary">
		<a href="listForums">帮助我们改进</a> <a href="manager.action"
			style="float: right;">后台管理</a>
	</div>
</body>
</html>