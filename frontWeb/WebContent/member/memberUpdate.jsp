<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function inputCheck() {
		//id, pw 필수입력 체크
		if (frm.id.value == "") {
			window.alert("id 입력");
			frm.id.focus();
			return false;
		}
		if (frm.pw.value == "") {
			alert("pw 입력");
			frm.pw.focus();
			return false;
		}
		//job (select 태그) 선택되었는지 확인
		if (frm.job.value == "") {
			//if(frm.job.selectedIndex > 0) {
			alert("job.선택");
			frm.job.focus();
			return false;
		}
			
		if(frm.reason.values == ""){
			window.alert("가입동기 입력");
			frm.reason.focus();
			return false;
		}
		//radio, checkbox
		var gender = document.querySelectorAll("[name='gender']:checked").length;
		if (gender == 0) {
			alert("성별 적어도 하나는 선택");
			return false;
		}
		//회원가입품 제출		
		//frm.submit();
		return true;
	}
</script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function () {
	//초기화
		$("[name=gender]").val(["${member.gender}"]);
		$("[name=hobby]").val("${member.hobby}".split());
		$("[name=mailyn]").val(["남"]);
		$("#frm [name=job]").val("program")
		
	});
</script>

</head>
<body>
<h3 class="page_title">회원 수정</h3>
${error}
	<form action="${pageContext.request.contextPath }/memberSearch.do">
		<input type="hidden" name="job" value="update">
		id : <input name="id">
		<button>검색</button>
	</form>
	
	<c:if test="${not empty member}">
		<h3>검색결과</h3>
		<form method="post" name="frm" id="frm"
				action="${pageContext.request.contextPath}/memberUpdate.do">
		
		<div>
			<label for="id"> ID</label>
			 <input name="id" id="id" value="${member.id}" readonly="readonly">
		</div>
		<br>
		
		<div>
			<label for="pw"> PW</label> <input name="pw" id="pw" value="${member.pw}">
		</div>
		<br>

		<div>
			<label for="gender">성별</label> 
			<input type="radio" id="male" name="gender" value="남"> 
			<label for="male">남</label> 
			<input type="radio" id="female" name="gender" value="여"> 
			<label for="female">여</label><br>
		</div>
		<br>
		<div>
			<label for="job">직업</label> <select name="job" id="job" length="4">
				<option value="">선택</option>
				<option value="pro">프로그래머</option>
				<option value="ceo">CEO</option>
			</select>
		</div>
		<br>
		<div>
			<label for="reason">가입동기</label>
			<textarea id="reason" name="reason">${member.reason}</textarea>
		</div>
		<br>
		<div>
			<label for="mailyn">메일수신여부</label> <input type="checkbox"
				name="mailyn">
		</div>
		<br>
		<div>
			<label for="hobby">취미</label> 
			<input type="checkbox" name="hobby" value = "read">독서
			<input type="checkbox" name="hobby" value = "game">게임
			<input type="checkbox" name="hobby" value = "ski">스키
			<input type="checkbox" name="hobby" value = "ski">여행
		</div>
		<br>
		<br>

		<div>
			<button type="reset">초기화</button>
			<button>등록</button>   <!--type 안적으면  default submit-->
		</div>
		
		</form>
	</c:if>
</body>
</html>