<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/showTime.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加留言</title>
<script type="text/javascript">
	function hollow(x) {
		if (x.value == "在这里留下你的建议") {
			x.value = "";
		}
	}
	function checkValue() {
		var val = document.getElementsByName("forum.topic")[0].value;
		if (val == "在这里留下你的建议") {
			alert("建议不能为空");
			return false;
		} else {
			return true;
		}
	}
</script>
</head>
<body>
	<a href="index.jsp"><img alt="无法显示图片" src="pic/logo.png" /></a>
	<center>
		<form action="addForum" method="post" onsubmit="return checkValue()">
			<h2>意见栏</h2>
			<textarea rows="3" cols="50" name="forum.topic"
				onclick="hollow(this)"
				onblur="javascript:if(this.value=='') this.value='在这里留下你的建议'">在这里留下你的建议</textarea>
			<br /> <input type="hidden" name="forum.date" id="time" /> <input
				type="submit" value="提交" onclick="showtime()" /> <input
				type="reset" value="重置 " />
		</form>
	</center>
</body>
</html>