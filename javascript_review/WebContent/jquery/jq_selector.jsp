<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_selector</title>



</head>
<body>
	<table border="1" id="tbl">
		<tbody>
			<tr>
				<td id = "std">PARK</td>
				<td>25</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>

			<tr>
				<td>KIM</td>
				<td>21</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>

			<tr>
				<td>CHO</td>
				<td>27</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
		</tbody>
	</table>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
	<script>
		$("td:first").css("backgroundColor", "coral");
		console.log( $("#std").closest("table"))    //조상중에서 검색
		
		
	</script>
</body>
</html>