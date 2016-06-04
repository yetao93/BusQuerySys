$(document).ready(function() {
	$(".sts").bind("keyup",function(){
		assist(this);
	});
});

function insertAfter(newEle,targetEle){
	var parent = targetEle.parentNode;
	if (parent.lastChild == targetEle) {
		parent.appendChild(newEle);
	}else {
		parent.insertBefore(newEle,targetEle.nextSibling);
	}
}

function assist(x) {
	var st_name = x.value;
	$("#tishi").remove();
	var div = document.createElement("div");
	div.setAttribute("id", "tishi");
	insertAfter(div, x);
	$.ajax({
		type:"POST",
		url:"autoAssist.action",
		data:{"st_name":st_name},
		dataType:"json",
		success:function(data){
			$.each(data,function(commentIndex,comment){
				$("#tishi").append("<div id="+commentIndex+">"+comment+"</div>");
				$("#"+commentIndex).bind("click",function(){
					x.value=$("#"+commentIndex).text();
					$("#tishi").remove();
				});
				$("#"+commentIndex).bind("mouseover",function(){
					$("#"+commentIndex).css("background-color","gray");
				});
				$("#"+commentIndex).bind("mouseleave",function(){
					$("#"+commentIndex).css("background-color","white");
				});
			});
		},
	});
}

