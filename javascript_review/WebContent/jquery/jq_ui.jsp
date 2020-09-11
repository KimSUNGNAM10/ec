<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_ui</title>
<link rel="stylesheet" href="../jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="../jquery-ui.js"></script>
<!-- 순서 중요 -->

<script>
	$(function() {
		//accordion 테스트
		$("#acor").accordion( { 
			active:2, //시작 위치
			animate: 1000,  //열리는 시간
			collapsible: true,
			activate : function(event, ui) {
				console.log(ui.newHeader.text())
			}
		});
		//다이아로그
		$("#msg").dialog({
			autoOpen: false, //팝업창이 바로 안뜨게
			modal : true,  // 팝업창을 끄지않으면 부모창을 쓸수없게
			buttons : { 
				'저장' : function() {
					alert("저장완료");
				},
				'취소' : function() {
					$("#msg").dialog( "close");
				}
			}
		});
		//버튼
		$("#btnPopup").button().click(function() {
			$("#msg").dialog("open");
		});
		//datepicker
		$("#regDate").datepicker({
			dateFormat : "yy-mm-dd",
			mindate : -7,
			maxDate : "1m"
		});	
	});
</script>


</head>
<body>
<input id = "regDate">

	<span id="btnPopup">팝업</span>

	<div id="msg">알림 팝업</div>

	<div id="acor">
		<h3>자바</h3>
		<div>자바란......</div>

		<h3>바</h3>
		<div>바란......</div>

		<h3>자</h3>
		<div>자란......</div>
	</div>

</body>
</html>