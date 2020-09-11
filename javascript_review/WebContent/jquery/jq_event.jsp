<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_event</title>

<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<script>
	$(window).on("load", init);
	function init() {
		$(".price").hide();     //price 숨김
		
		$(".title").on("mouseenter mouseenter", function() {
			$(this).next().toggle();
		});
		//=====================================================================
/* 		$(".title").on("mouseenter", function() {
			 	var price = $(this).parent().find(".price:first").eq(0)
				price.css("display", "inline"); 
			$(this).next().show(); 위에 주석이랑 같은 의미
		}); 
		//=================================================
		 $(".title").on("mouseenter", function() {
			$(this).next().hide();
		}); */
	}
</script>
</head>
<body>
	<div>
		<span class="title">스프링</span> <span class="price">5000</span>
	</div>

	<div>
		<span class="title">자바</span> <span class="price">4000</span>
	</div>

	<div>
		<span class="title">자바스크립</span> <span class="price">3000</span>
	</div>
</body>
</html>