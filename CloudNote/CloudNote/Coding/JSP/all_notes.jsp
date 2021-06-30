<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<title>ALLNotes</title>
<%@include file='all_js_css.jsp'%>
</head>
<body class="bg-light">
	<div class="container">
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	<h1 class="text-uppercase text-center mx-3" style="background-color: hsla(14, 100%, 53%, 0.6);border-radius: 5px;">Your Notes</h1>

	<div class="col-12 ">
		<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> list = q.list();
			for (Note note : list) {
		%>
		<div class="card mt-3" style="background-color: rgba(50, 115, 220, 0.3);">
			<img class="card-img-top m-4 mx-auto" style="max-width: 100px;"
				src="img/noteIcon.png" alt="Card image cap">
			<div class="card-body px-5 ">
				<h5 class="card-title "><i class="fa fa-book" aria-hidden="true"></i>
					<%=note.getTitle()%>
				</h5>
				<p class="card-text"><i class="fa fa-chevron-right" aria-hidden="true"></i> 
					<%=note.getContent()%>
				</p>
				<div class="container text-right">
					<pre>
						<b class="text-primary"><i class="fa fa-calendar"
							aria-hidden="true"></i> Date - <i class="fa fa-clock-o"
							aria-hidden="true"></i> Time : <%=note.getAddedDate()%></b>
					</pre>
				</div>
				<div class="container text-center mt-2 ">
					<a href="DeleteServelet?note_id=<%=note.getId()%>"
						class="btn btn-danger"><i class="fa fa-trash"
						aria-hidden="true"></i> Delete</a> <a
						href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-warning"><i
						class="fa fa-pencil-square" aria-hidden="true"></i> Update</a>
				</div>

			</div>
		</div>

		<%
			}
			s.close();
		%>
	</div>

</body>
</html>