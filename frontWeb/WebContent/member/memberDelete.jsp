<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	if ( '${error}' != '') {
		alert('ddd');
	}
</script>
</head>
<body>
<h3>회원 삭제</h3>
${error}
	<form action="${pageContext.request.contextPath }/memberSearch.do">
		<input type="hidden" name="job" value="delete">
		id : <input name="id">
		<button>검색</button>
	</form>
	
	<!-- 검색결과 출력 -->
	<c:if test="${not empty member}">
	
	<h3>검색결과</h3>
		${member.job} <br>
		${member.gender} <br>
		${member.id} <br>
	
		<form action="${pageContext.request.contextPath}/memberDelete.do">
			<input name="id" value="${member.id}" type="hidden">
			<button>삭제</button>
		</form>
	</c:if>
</body>
</html>