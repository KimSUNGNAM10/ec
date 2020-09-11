<%@page import="com.dev.model.MemberVO"%>
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

		if (frm.reason.values == "") {
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
	<%
		MemberVO member = (MemberVO) session.getAttribute("login");
	%>

	<form method="post" name="frm" class="frm" action="memberUpdate">

		<div>
			<label for="id"> ID</label> <input name="id" id="id"
				value="<%=member.getId()%>" readonly="readonly">
		</div>

		<div>
			<label for="pw"> PW</label> <input name="pw" id="pw"
				value="<%=member.getPw()%>">
		</div>

		<div>
			<label for="gender">성별</label> <input type="radio" name="gender" value="남"
				<%if ("남".equals(member.getGender())) { out.print("checked='checked'");}%>>남
			<input type="radio" name="gender" value="여"
				<%if ("여".equals(member.getGender())) { out.print("checked='checked'");}%>>여
		</div>

		<div>
			<label for="job">직업</label> 
			<select name="job" id="job" >
				<option value="">선택</option>
				<option value="pro" selected="selected">프로그래머</option>
				<option value="ceo" selected="selected">CEO</option>
			</select>
		</div>

		<div>
			<label for="reason">가입동기</label>
			<textarea id="reason" name="reason"><%=member.getReason()%></textarea>
		</div>

		<div>
			<label for="mailyn">메일수신여부</label> <input type="checkbox"
				name="mailyn">
		</div>


		<div>
		<% String hobby = member.getHobby();
					if (hobby == null)
						hobby = "";
					%>
		
			<label for="hobby">취미</label> 
			<input type="checkbox" name="hobby" value="read"
				<%if(hobby.contains("read")) { out.print("checked='checked'"); }%>>독서
				
			<input type="checkbox" name="hobby" value="game" 
				<%if (hobby.contains("game")) {out.print("checked='checked'");}%>>게임
				
			<input type="checkbox" name="hobby" value="tra"
				<%if(hobby.contains("tra")) {out.print("checked='checked'");}%>>여행
		</div>
		<br> <br>

		<div>
			<button type="reset">초기화</button>
			<button>등록</button>
			<!--type 안적으면  default submit-->
		</div>
	</form>
</body>
</html>