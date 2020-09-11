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
	<%@include file="../menu.jsp"%>
	
	<form method="post" name="frm" class="regist"
		  action = "memberInsertProc.jsp"
		  onsubmit="return inputCheck()">
		<div>
			<label for="id"> ID</label> <input type="text" name="id" id="id">
		</div>

		<div>
			<label for="pw"> PW</label> <input type="password" name="pw" id="pw">
		</div>

		<div>
			<label for="gender">성별</label> <input type="radio" id="male"
				name="gender" value="male"> <label for="male">남</label> <input
				type="radio" id="female" name="gender" value="female"> <label
				for="female">여</label><br>
		</div>
		<div>
			<label for="job">직업</label> <select name="job" id="job" length="4">
				<option value="">선택</option>
				<option value="pro">프로그래머</option>
				<option value="ceo">CEO</option>
			</select>
		</div>

		<div>
			<label for="reason">가입동기</label>
			<textarea id="reason" name="reason"></textarea>
		</div>

		<div>
			<label for="hobby">메일수신여부</label> <input type="checkbox"
				name="mailyn">
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