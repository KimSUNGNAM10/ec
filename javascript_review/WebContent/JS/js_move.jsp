<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_move</title>
<style>
img {
	width: 200px;
	top: 100px;
	left: 100px;
	position: relative;
}
</style>

</head>
<body>
	<script>
	document.addEventListener("mousemove", function(){
		//console.log(event.clientX, event.clientY);
		//if(event.button == 0) {
		img1.style.left = event.clientX + "px";
		img1.style.top = event.clientY + "px";
		//}
	})
	 document.addEventListener("keydown", function(){
		if(event.keyCode == 37) {
			img1.style.left = ( parseInt(img1.style.left) -10) + "px";
		} 
	 })
</script>
	<img src="../images/F52.jpg" id="img1">
</body>
</html>