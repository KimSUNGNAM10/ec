<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empAll</title>
</head>
<body>
	<h3>사원목록</h3>
	
	<a href = "#">king</a><br>
	<a href = "#">steven</a><br>
	<a href = "#">scott</a><br>     
	<!-- 태그안에 onclick 권장하지않음 따로 빼서 정의   나중에 유지보수가 수월해짐 -->
	
	<script>
	
		var atag = document.getElementsByTagName("a");
		for (i=0; i<atag.length; i++) {
			atag[i].addEventListener("click", choose);   //함수뒤에  () x
		}
		
		function choose() {
			opener.document.getElementById("manager_id").value =
				window.event.target.innerHTML //opener 부모를 가르킴
				//window는 자신
			window.close();				
				
		}
	</script>
</body>
</html>