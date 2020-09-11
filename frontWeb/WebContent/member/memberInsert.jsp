<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

</head>

<body>
	<h3 class="page_title">회원등록</h3>
	
	
	<!-- /frontWeb/ 권장x  절대경로  이름이 바뀔수있음,   상대경로   ../memberInsert.do   -->
	<form method="post" name="frm" class="regist"
		  action = "${pageContext.request.contextPath}/memberInsert.do">  
		<div>
			<label for="id"> ID</label> <input type="text" name="id" id="id">
		</div>
		<br>
		<div>
			<label for="pw"> PW</label> <input type="password" name="pw" id="pw">
		</div>
		<br>

		<div>
			<label for="gender">성별</label> <input type="radio" id="male"
				name="gender" value="male"> <label for="male">남</label> <input
				type="radio" id="female" name="gender" value="female"> <label
				for="female">여</label><br>
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
			<textarea id="reason" name="reason"></textarea>
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
</body>
</html>