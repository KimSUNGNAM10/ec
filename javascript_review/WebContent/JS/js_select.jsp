<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_select</title>
</head>
<body>
	<input id="txtFruit" >
	<button type="button" id="btnAdd" onclick="addFruit()">추가</button>
	<button type="button" id="btnDel" onclick="delFruit()">제거</button>
	<select id="listFruit" size = "5px"></select>

	<script>
	// 텍스트필드의 값을 select에 추가
	txtFruit.addEventListener("keypress", function(){
		if(event.keyCode == 13 ) {
			addFruit();	
		}
	});
	
		function addFruit() {
			//텍스트필드의 값을 select 에 추가
			//option 태그 생성
			//select에 추가
			
			var option = document.createElement("option"); //select box 만듬
			option.text = txtFruit.value;   //text에 적은 값을 가지고옴
			listFruit.add(option);      //select box에 추가
			txtFruit.value = "";     //값을 넣고 추가하면 빈칸으로 초기화됨
		}
		function delFruit() {
			var x = document.getElementById("listFruit");
			x.remove(x.selectedIndex);
		}
		
	</script>
</body>
</html>