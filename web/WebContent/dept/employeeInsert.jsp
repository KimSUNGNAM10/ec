<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
	label { display: inline-block; width : 100px}
</style>
</head>
<body>
   <h1>사원등록</h1>
   <form action="empInsert" method="post">  
    <div><label>employee-Id</label> <input name="employeeId"></div>
    <div><label>first-Name</label> <input name="firstName"></div>
    <div><label>last-Name</label> <input name="lastName"></div>
    <div><label>e-mail</label> <input name="email"></div>
    <div><label>hire-Date</label> <input name="hireDate"></div>
    
    <div>
   	 <label>department_id</label> 
    	<c:forEach items="${deptid}" var="departmentid">
    		<input type="radio" value="${departmentid.department_id}" >${departmentid.department_name}
    	</c:forEach>
    </div>
    
  
    <div>
    	<label>jobId</label> 
    		<select name="jobId">
					<option value="">선택
				<c:forEach items="${joblist}" var="job">
					<option value="${job.job_id}">${job.job_title}</option>
				</c:forEach>
			</select>
    </div>
    	     	  
    <div>
		<label>manager_id</label> 
			<select name="manager_id">
					<option value="">선택
				<c:forEach items="${manid}" var="managerid">
					<option value="${managerid.manager_id}">${managerid.manager_id}</option>
				</c:forEach>
    	    </select>
    </div>
    	          
    <button id="btnInsert">등록</button>
    
    </form>
</body>
</html>