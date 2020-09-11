<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberAll</title>
</head>
<body>
<%@include file="../menu.jsp" %>
	<h3 class="page_title">회원 전체조회</h3>
	
	<ul class="search">
		<li>메일수신여부</li>
		<li>성별</li>
		<li><button type = "button">검색</button></li>
	</ul>

	<table border="1" id="members">
		<thead>
			<tr>
				<th>title</th>
				<th>contents</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td>aAlfreds Futterkiste</a></td>
				<td>Maria Anders</td>
			</tr>
			<tr>
				<td>Centro comercial Moctezuma</td>
				<td>Francisco Chang</td>
			</tr>
			<tr>
				<td>Ernst Handel</td>
				<td>Roland Mendel</td>
			</tr>
			<tr>
				<td>Island Trading</td>
				<td>Helen Bennett</td>
			</tr>
			<tr>
				<td>Laughing Bacchus Winecellars</td>
				<td>Yoshi Tannamuri</td>
			</tr>
			<tr>
				<td>Magazzini Alimentari Riuniti</td>
				<td>Giovanni Rovelli</td>
			</tr>
		</tbody>
	</table>
</body>
</html>