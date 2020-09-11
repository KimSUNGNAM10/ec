<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empInsert</title>
</head>
<body>
	<form>
		manager <input id ="manager_id">
		<button type = "button" id = "btnSearch" onclick="findManager()">검색</button>
		
	</form>
	
	<script>
		function findManager() {  
		    popup = window.open("empAll.jsp", "empSearch", "width=350, height=300, left=100");
		    popup.addEventListener("load", function(){
		    	popup.document.title="사원검색";
		    } );
			//load 는 팝업창이 뜬다음에 익명함수호출   호출한함수내용이 title변경 
			//open 파일 / 새창이름 / 옵션 
		}
		
		
	</script>
</body>
</html>