package com.servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServelet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// title,content fetch
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Note note = new Note(title, content, new Date());

			// hibernate:save()
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;background-color:#f50057;color:White;'><pre>Note is added successfully</pre></h1>");
			out.println("<P style='text-align:center;'><a href='add_notes.jsp'><button style='background-color:#6a1b9a; color:white; font-family:Andale Mono, monospace; font-size:20px; padding:12px 28px; border-radius:8px; border:white;'><b>Add More</b></button></a></P>");
			out.println("<P style='text-align:center;'><a href='all_notes.jsp'><button style='background-color:#6a1b9a; color:white; font-family:Andale Mono, monospace; font-size:20px; padding:12px 28px; border-radius:8px; border:white;'><b>Show Notes</b></button></a></P>");
			} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}

	}

}
