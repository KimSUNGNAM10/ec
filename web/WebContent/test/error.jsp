<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
에러 발생!!!!!!!!!!!!!!->>>>>>>>>>>  !!!!!!!!!!!!!관리자에게 문의하세요!!!!!!!!!!! <br><br>
에러 내용은 : <%=exception.getMessage() %> <br><br>
에러 타입은 : <%=exception.getClass().getName() %> <br>
</body>
</html>