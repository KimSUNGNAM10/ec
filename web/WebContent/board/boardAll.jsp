<%@page import="board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSelect</title>
<link rel="stylesheet" type="text/css" href="../common.css">
</head>
<body>
	<h3>내 정보 조회</h3>
	<h3 class="page_title">회원 전체조회</h3>

	<table id="customers" border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성일자</th>
				<th>이미지</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${datas}" var="board">
				<tr>
					<td>${board.no}</td>
					<td><a href="#">${board.subject}</a></td>
					<td>${board.poster()}</td>
					<td>${board.views() }</td>
					<td><a href="download.do?filename=${board.filename }"></a>
					
					<td>
						<c:if test="${not empty board.filename}">
								<img src="../images/${board.filename}" style="width: 50px">
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>