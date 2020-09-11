<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_groupevent</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function() {
		//버튼 클릭 : input tag값을 ul 태그에 추가 		
		$("#btnAdd").click(function() {
			var a = $("#fruit").val();
			$("<li>").text(a).appendTo("ul");
		});

		//li 마우스오버 이벤트 : 색변경
		$("li").on("mouseover", function() {
			$(this).css("backgroundColor", "red")
		});
		
		
		$("ui").on("mouseover", "li", function() {
			$(this).css("backgroundColor", "red");
		});
	});
</script>


</head>
<body>
	<input id="fruit">
	<button type="button" id="btnAdd">추가</button>


	<ul>
		<li>자바
		<li>스프링
	</ul>


</body>
</html>