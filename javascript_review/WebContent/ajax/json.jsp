<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<div id="result"></div>
	<script>
	//객체
		var obj = {
			id : "hong",
			name : "홍길동"
		};
		result.innerHTML += obj.name + "<br>";
	//배열
		var arr = [
		 	{ id : "hong", name : "홍길동" },
		 	{ id : "kkkk", name : "김기자ㅏ"}
		]
		result.innerHTML += arr[1].name + "<br>";
	
	//객체 배열
		var objArr = { id : "hong", name : "홍길동", hobby : ["운동", "영화", "여행"] };
		result.innerHTML += objArr.hobby[2] + "<br>";
		
	//객체값이 객체
		var objObj = { members : { cnt : 4, list : [ "기미" , "이" ] }  };
		result.innerHTML += objObj.members.list[0] + "<br>";
		
		
		
		
		
		
		
	</script>
</body>
</html>