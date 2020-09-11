<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_string</title>
</head>


<body>
	<h3>string object 연습</h3>
<div id = "result"></div>

	<script>
		var url = "/review/memeber/memberInsert.jsp";	
	  	idx = url.lastIndexOf("/")
	  	var cs = url.substring(idx);
		document.getElementById("result").innerHTML = cs;
		
		result.innerHTML = url.substring(url.lastIndexOf("/")+1)
	</script>

</body>
</html>