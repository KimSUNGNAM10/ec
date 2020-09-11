<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSelect</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>


<h3>내 정보 조회</h3>
<div><span class="label">아이디</span><span>we</span></div>
<div><span class="label">패스워드</span><span>we</span></div>
<div><span class="label">직업</span><span>ceo</span></div>
<div><span class="label">가입동기</span><span>u</span></div>
<div><span class="label">성별</span><span>남</span></div>
<div><span class="label">메일 수신 여부</span><span>no</span></div>

<button type = "button" id = "btnPage">목록으로...!!!!</button>

<script>
	btnPage.addEventListener("click", goPage);

	function goPage() {
		//네줄 다 같은 의미   ,  이전 페이지로 이동
		//history.back();    
		//history.go(-1); 
		//location.href="memeberAll.jsp"
		location.assign("memberAll.jsp");
	}
</script>

</body>
</html>