<%@page import="member.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberAll</title>
</head>
<body>
	<h3 class="page_title">회원 전체조회</h3>

	<ul class="search">
		<li>메일수신여부</li>
		<li>성별</li>
		<li><button type="button">검색</button></li>
	</ul>

	<table border="1" id="members">
		<thead>
			<tr>
				<th>id</th>
				<th>pw</th>
				<th>성별</th>
				<th>job</th>
				<th>가입동기</th>
				<th>메인 수신 여부</th>
				<th>취미</th>
				<th>regdate</th>
			</tr>
		</thead>
		<tbody>
		
<%-- 		<% ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("list");
			for(MemberVO member : list) {	
		 %> --%>
		 
		 <c:forEach items="${list}" var="member">
		 	
			<tr>
				<td><a href="#">${member.getId()}</a></td>  <!-- id만 적어도됨 -->
				<td>${member.getPw()}</td>
				<td>${member.getGender()}</td>
				<td>${member.getJob()}</td>
				<td>${member.getReason()}</td>
				<td>
					${member.getMailyn()}
					<button type="button">메일 발송</button>
				</td>
				<td>${member.getHobby()}</td>
				<td>${member.getRegdate()} 
					<fmt:formatDate value="${member.regdate}" pattern="yy-MM-dd" var="parseToday"/>
				</td>
	
			</tr>
			
	<%-- 	<% } %> --%>
		
			</c:forEach>
		</tbody>
	</table>
</body>
</html>