function addColumn() {
	var dest = document.getElementById("destination");
	var sts = document.getElementsByName("st_names");
	var inp = document.createElement("input");
	var tr = document.createElement("tr");
	var td1 = document.createElement("td");
	var td2 = document.createElement("td");
	var text = document.createTextNode("站点"+sts.length+"：");
	var dest_inp = document.getElementById("st"+(sts.length-1));
	inp.setAttribute("type","text");
	inp.setAttribute("name","st_names");
	inp.setAttribute("class","sts");
	inp.setAttribute("id", "st"+(sts.length-1));
	td1.appendChild(text);
	td2.appendChild(inp);
	tr.appendChild(td1);
	tr.appendChild(td2);
	dest.parentNode.insertBefore(tr, dest);
	dest_inp.setAttribute("id", "st"+(sts.length-1));
	$("#st"+(sts.length-2)).bind("keyup",function(){
		assist(this);
	});
}