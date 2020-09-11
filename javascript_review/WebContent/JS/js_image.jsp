<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img {
	width: 400px;
	height: 400px;
}
</style>

</head>
<body>
	<script>
		var imgArr = [ "../images/F52.jpg", "../images/F6.jpg",
					   "../images/F9.jpg", "../images/F11.jpg" ];
		for (var i = 0; i < imgArr.length; i++) {
			//	document.write("<img src=' " + imgArr[i] + " ' >");
			var img = document.createElement("img");         //태그 생성
			img.src = imgArr[i];                			 //src 속성변경
			document.body.appendChild(img); //body에 추가
			
			img.addEventListener("mouseover", function() {
				this.style.width = "600px";
			});
			
			img.addEventListener("mouseout", function() {
				this.style.width = "300px";
			});
			/* img.onmouseout = function() {
				this.style.width = "300px"; */
			}
		
	</script>
</body>
</html>