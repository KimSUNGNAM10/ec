<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_table.jsp</title>
</head>
<body>
	<table border = "1">
		<tbody id="members"></tbody>

	</table>
	<script>
		var datas = [ {
			id : 'chichi',
			age : 30,
			regdate : '2020/01/02'
		}, {
			id : 'hong',
			age : 20,
			regdate : '2020/02/02'
		}, {
			id : 'kim',
			age : 25,
			regdate : '2020/01/10'
		}, {
			id : 'park',
			age : 35,
			regdate : '2020/05/20'
		} ]
		//배열의 값을 테이블 태그에 출력	

		for (var i = 0; i < datas.length; i++) {
			var row = members.insertRow(0);

			var cell = row.insertCell(0);
			cell.innerHTML = datas[i]["id"];

			var cell1 = row.insertCell(1);
			cell1.innerHTML = datas[i]["age"];

			var cell2 = row.insertCell(2);
			cell2.innerHTML = datas[i]["regdate"];

			//	=\======================================================
			/* for (var i = 0; i < datas.length; i++) {
				var tr = members.insertRow();

				var td = tr.insetCell();
				td.innerHTML = datas[i].id;

				var td = tr.insetCell();
				td.innerHTML = datas[i].age;

				var td = tr.insetCell();
				td.innerHTML = datas[i].regdate;
			}  */
			//-----------------------------------------------------
			/* for (var i = 0; i < datas.length; i++) {
				var tr = members.insertRow();

				for (key in datas[i]) {
					var td = tr.insertCell();
					td.innerHTML = datas[i][key];

				} */

		}

		//members.insertRow
	</script>
</body>
</html>