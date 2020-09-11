<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<title>Insert title here</title>

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>

<style>
div {
	border: 1px solid blue;
	height: 200px;
}

.container {
	min-height: 500 px;
}
</style>

</head>
<body>
	<div class="container">
		<!-- Content here -->

		<div>
			<div class="card" style="width: 18rem;">

				<div class="card-body">
					<img src="./images/F2.jpg" class="card-img-top" alt="...">
					<h5 class="card-title">Card title</h5>
					<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="card-link">Card link</a> <a href="#"
						class="card-link">Another link</a>
				</div>
			</div>
		</div>
		<div>
			<a href="#" class="btn btn-info">링크버튼</a> <span
				class="btn btn-success">스팬버튼</span>
			<button class="btn btn-secondary">버튼</button>
		</div>

		
			<div class="col-xl-4 col-md-6 col-sm-12">
				<form>
					<div class="form-group">
						<label class="col-3">id</label><div class="col-7"><input class="form-control"></div>
					</div>

					<div class="form-group">
						<label>pw</label> <input class="form-control">
					</div>

					<div class="form-group">
						<button class="btn btn-success">등록</button>
					</div>
				</form>
			</div>

		<div class="row align-items-center">
			<table class="table table-hover table-dark">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">First</th>
						<th scope="col">Last</th>
						<th scope="col">Handle</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<button type="button" class="btn btn-primary">
		Notifications <span class="badge badge-light">4</span>
	</button>
</body>
</html>