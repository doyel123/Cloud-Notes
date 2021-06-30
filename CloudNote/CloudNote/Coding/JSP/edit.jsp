<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<meta charset="ISO-8859-1">
<title>Update</title>
<%@include file="all_js_css.jsp"%>
</head>
<body class = "bg-light">
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 class="text-white bg-dark text-uppercase text-center my-1">Edit Your Details</h1>
		<br>
		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = s.get(Note.class, noteId);
		%>
		<form action="UpdateServelet" method="post">
			<input value="<%=note.getId()%>" name="noteId" type="hidden" />

			<div class="form-group">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					value="<%=note.getTitle()%>" />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content" class="form-control"
					style="height: 300px;"><%=note.getContent()%>
					</textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">
					<i class="fa fa-check" aria-hidden="true"></i> Update
				</button>
			</div>

		</form>

	</div>

</body>
</html>