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
				<th>id</th>
				<th>pw</th>
				<th>job</th>
				<th>성별</th>
				<th>메인 수신 여부</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td><a href="memberSelect.jsp">aAlfreds Futterkiste</a></td>
				<td>Maria Anders</td>
				<td>Germany</td>
				<td>Germany</td>
				<td>Germany</td>
			</tr>
			<tr>
				<td>Centro comercial Moctezuma</td>
				<td>Francisco Chang</td>
				<td>Mexico</td>
				<td>Germany</td>
				<td>Germany</td>
			</tr>
			<tr>
				<td>Ernst Handel</td>
				<td>Roland Mendel</td>
				<td>Austria</td>
				<td>Germany</td>
				<td>Germany</td>
			</tr>
			<tr>
				<td>Island Trading</td>
				<td>Helen Bennett</td>
				<td>UK</td>
				<td>Germany</td>
				<td>Germany</td>
			</tr>
			<tr>
				<td>Laughing Bacchus Winecellars</td>
				<td>Yoshi Tannamuri</td>
				<td>Canada</td>
				<td>Germany</td>
				<td>Germany</td>
			</tr>
			<tr>
				<td>Magazzini Alimentari Riuniti</td>
				<td>Giovanni Rovelli</td>
				<td>Italy</td>
				<td>Germany</td>
				<td>Germany</td>
			</tr>
		</tbody>
	</table>
</body>
</html>