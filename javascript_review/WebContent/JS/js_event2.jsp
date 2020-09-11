<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_event2</title>
<script>
	window.addEventListener("load", function() {
		var btns = document.getElementsByClassName("btnSelect")
		
		//단독 이벤트
		/* for (var i = 0; i < btns.length; i++ ) {
			btns[i].addEventListener("click", function() {
			var td = this.parentNode.parentNode.getElementsByTagName("td")[0]
			alert(td.innerHTML);
			})			
		} */
		//그룹 이벤트
		tbl.addEventListener("click", function(){
			console.dir(event.target)  				//버튼
			console.dir(this)       				//table
			alert(event.target.parentNode.parentNode.getElementsByTagName("td")[0].innerHTML)
		});
	});
</script>

</head>
<body>
	<table border="1" id = "tbl">
		<tbody>
			<tr>
				<td>PARK</td>
				<td>25</td>
				<td><button type = "button" class = "btnSelect">선택</button></td>
			</tr>
			
			<tr>
				<td>KIM</td>
				<td>21</td>
				<td><button type = "button" class = "btnSelect">선택</button></td>
			</tr>
			
			<tr>
				<td>CHO</td>
				<td>27</td>
				<td><button type = "button" class = "btnSelect">선택</button></td>
			</tr>
		</tbody>
	</table>
</body>
</html>