<%@page import="dept.EmpVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "1" id="member">
		<thead>
			<tr>
				<th>employee-Id</th>
				<th>first-Name</th>
				<th>last-Name</th>
				<th>e-mail</th>
				<th>hire-Date</th>
				<th>department-name</th>
				<th>job-ID</th>
				<th>manager-id</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="" var="">
				<tr>
					<td><a></a></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
</body>
</html>