<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_move</title>
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
		img1.style.left = "100px";
		img1.style.top = "100px";

		document.addEventListener("mousemove", function() {
			//console.log(event.clientX, event.clientY);
			//if(event.button == 0) {
			//img1.style.left = event.clientX + "px";
			//img1.style.top = event.clientY + "px";
			//}
		})
	window.addEventListener("load", function) {
		document.addEventListener("keydown", function() {
			if (event.keyCode == 37) {
				img1.style.left = (parseInt(img1.style.left) - 10) + "px";
			}

			if (event.keyCode == 38) {
				img1.style.top = (parseInt(img1.style.top) - 10) + "px";
			}

			if (event.keyCode == 39) {
				img1.style.left = (parseInt(img1.style.left) + 10) + "px";
			}

			if (event.keyCode == 40) {
				img1.style.top = (parseInt(img1.style.top) + 10) + "px";
			}
		});
	});
	</script>
	<img src="../images/F52.jpg" id="img1">
</body>
</html>