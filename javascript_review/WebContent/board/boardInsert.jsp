<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function inputCheck() {
		
		if (frm.title.value == "") {
			window.alert("title 입력");
			frm.title.focus();
			return false;
		}

		if (frm.contents.value == "") {
			alert("contents.선택");
			frm.contents.focus();
			return false;
		}

		return true;
	}
	
</script>

</head>

<body>
	<%@include file="../menu.jsp"%>

	<form method="post" name="frm" class="regist"
		onsubmit="return inputCheck()">

		<div>
			<label for="title">Title</label> 
			<input type="text" name="title" id="title">
		</div>

		<div>
			<label for="contents">Contents</label> 
			<input type="text" name="contents" id="contents">
		</div>
		
		<div>
			<label for="filename">filename</label> 
			<input type="text" name="filename" id="filename">
		</div>
		
		<br><br>

	</form>
</body>
</html>