<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<title>HomePage</title>

<%@include file="all_js_css.jsp"%>
</head>
<body class="bg-info">
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-white bg-dark text-uppercase text-center my-1">Start
			Taking Notes</h1>
		<div class="card shadow my-5 bg-info">
			<img alt="image not found ! ! !" class="img-fluid mx-auto my-2" style="max-width: auto; max-height: 450px"
				src="img/noteBook.jpg">

			<div class="container text-center">
				<a href='add_notes.jsp'>
					<button class="btn btn-success btn-lg my-2 ">
						Start Here <i class="fa fa-arrow-right" aria-hidden="true"></i>
					</button> <br>
				</a>
			</div>
		</div>
	</div>

</body>
</html>