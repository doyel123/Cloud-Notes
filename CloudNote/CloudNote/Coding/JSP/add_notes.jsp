<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<meta charset="ISO-8859-1">
<title>CloudNote/AddNotes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body class = "bg-light">
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-white bg-dark text-uppercase text-center my-1">Fill Your Details</h1>
		<br>
		<!--This is Add Form -->

		<form action="SaveNoteServelet" method="post">
			<div class="form-group">
				<label for="title"><i class="fa fa-file-text" aria-hidden="true"></i> Note Title</label> 
				<input 
				name="title"
				required 
				type="text"
				class="form-control" 
				id="title" 
				placeholder="Enter you note title"/>
			</div>
			<div class="form-group">
				<label for="content"><i class="fa fa-pencil-square" aria-hidden="true"></i> Note Content</label>
				<textarea
				 name="content"
				 required
				 placeholder="Enter your content"
				 id="content" 
				 class="form-control" 
				 style="height: 300px;"
				 ></textarea>

			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary"><i class="fa fa-floppy-o" aria-hidden="true"></i> Save</button>
			</div>

		</form>
	</div>

</body>
</html>