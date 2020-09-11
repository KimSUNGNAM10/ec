<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_number.jsp</title>


</head>
<body>
	<input name="num1" id="num1">+
	<input name="num2" id="num2">=
	<input name="result" id="result">

	<button type="button" id="btnResult">결과확인</button>
	<button type="button" id="btnInit">초기화</button>
	<div id="divResult"></div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
	<script>
	$("#btnResult").on("click", checkResult);
	
	
	
	//전역변수
	var ocnt = 0; //맞은수
	var xcnt = 0; //틀린수
	//두 수의 합이 result 와 같으면 맞은 수 증가 다르면 틀린 수 증가
	// 총 게임횟수가 5회가 되면 버튼 비활성화하고 결과 출력
	
	function checkResult() {
		//지역변수
		// 두 수의 합이 result 와 같으면 "맞다" 다르면 "틀림"으로 출력 
		if(parseInt(num1.val) + parseInt(num2.val) == parseInt(result.val) ) {
			//맞은 수 카운트
			ocnt++;
			divResult.innerHTML += "맞다<br>";     <!--  div 사이에 innerHTML 출력-->
			
		} else {
			//틀린 수 카운트
			xcnt++;
			divResult.innerHTML += "틀리다<br>";
		}		
		
		//틀린수 + 맞은수 == 5회이면 맞은 수* 20 결과를 출력하고 버튼 비활성화
		if(ocnt + xcnt == 5) {
			alert("결과는 " + ocnt * 20 + "점");
			btnResult.disabled = "disabled";
		} else {
			init();
			result.value = "";
		}
	}
	
	//함수선언
	function init() {
		num1.value = Math.floor(Math.random() * 100);
		num2.value = Math.floor(Math.random() * 100);
	}
	
	init(); //함수 호출 (실행)
	</script>

</body>
</html>