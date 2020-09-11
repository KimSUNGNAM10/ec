<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function decoTest(){
		console.log("test");
	}
</script>
</head>
<body>
<h3>회원 조회</h3>
<!-- /frontweb/memberList.do,                 ../memberList.do -->

<a href="${pageContext.request.contextPath}/memberList.do">전체검색</a>

	<form action="${pageContext.request.contextPath}/memberSearch.do"> <!-- /는  http://localhost/memberSearch.do 가됨  주소 안맞음 -->
	<input type="hidden" name="job" value="search">
		id : <input name = "id">
		<button>검색</button>
	</form>
</body>
</html>