<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%-- 	<%
		String id = (String) session.getAttribute("id");
	%>

	<ul>
		<%
			if (id == null) {
		%>
		
		<li><a href="<%=application.getContextPath()%>/member/login.jsp">로그인</a> 
		<% } else { %>
		<li><%=id%>님 <a href="<%=application.getContextPath()%>/member/logout">로그아웃</a> 
		<li><a href="<%=application.getContextPath()%>/member/memberUpdate">내 정보 수정~~</a>
		
		<% } %>
 
		<li><a href="<%=application.getContextPath()%>/dept/DeptInsertFormServ">부서등록품</a>
		<li><a href="<%=application.getContextPath()%>/dept/deptSelectAll">부서전체조회</a>
		<li><a href="<%=application.getContextPath()%>/memeber/memberInsert.do">회원가입</a>
		<li><a href="<%=application.getContextPath()%>/memeber/memberSelectAll.do">회원전체조회</a>
	</ul> --%>
		

	<ul>
		<c:if test="${sessionScope.id == null}">
			<li><a href="/web/member/login.jsp">로그인</a>	
		</c:if>
	
		<c:if test="${sessionScope.id == null}">
		
		<li><a href="<%=application.getContextPath()%>/member/login.jsp">로그인</a> 

		<li>${sessionScope.id}님 <a href="<%=application.getContextPath()%>/member/logout">로그아웃</a> 
		<li><a href="<%=application.getContextPath()%>/member/memberUpdate">내 정보 수정~~</a>
		
		</c:if>
		
		
		<li><a href="/web/dept/deptInsert">부서등록품</a>
		<li><a href="<%=application.getContextPath()%>/dept/deptSelectAll">부서전체조회</a>
		<li><a href="<%=application.getContextPath()%>/memeber/memberInsert.do">회원가입</a>
		<li><a href="<%=application.getContextPath()%>/memeber/memberSelectAll.do">회원전체조회</a>
	</ul>
	
	
	
	