<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearch</title>
<script>
	function loadDoc() {
		//1. XHR 객체 생성
		var xhttp = new XMLHttpRequest();
		
		xhttp.onreadystatechange = function() {   //서버로 부터 응답이 오면 func 실행   / 2. 콜백함수
			if (this.readyState == 4) {  
				// status가 200이면 성공    && this.status == 200, 상태가 4가뜨면 완료되었다
				
				if(this.status == 200 ) {
					
				var obj = JSON.parse( this.responseText);
				for ( var i = 0; i < obj.boxOfficeResult.dailyBoxOfficeList.length; i++ ) {
					document.getElementById("result").innerHTML += 
						obj.boxOfficeResult.dailyBoxOfficeList[i].movieNm + "<br>";
					}
				} else {
					document.getElementById("result").innerHTML = xhttp.status + " , "
																  xhttp.statusText;
				}																					
			} else {
				document.getElementById("result").innerHTML = "처리중" + "<br>" + "<br>";
			}
		};
		//3. 요청준비
		var dt = document.getElementById("name").value
		var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt="
					+ dt;
		xhttp.open("GET", url, true);
		//4. 요청시작
		xhttp.send();
	}
</script>

</head>
<body>
	<input type="text" id="name">

	<button type="button" onclick = "loadDoc()">검색</button>

	<div id="result"></div>

</body>
</html>