<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <%=request.getAttribute("errormsg") %>

	<form method="post" name="frm" id="frm" action="login">
		<div>
			<label for="id"> ID</label>
			 <input name="id" id="id">
		</div>

		<div>
			<label for="pw"> PW</label>
			 <input name="pw" id="pw">
		</div>
		<button>로그인</button>
	</form>
</body>
</html>