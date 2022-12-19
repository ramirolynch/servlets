package com.practicejsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Form1Servlet
 */
@WebServlet("/form3")
public class Form3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		
		String s1 = request.getParameter("t4");
		String s2 = request.getParameter("t5");
		
		HttpSession session = request.getSession();
		session.setAttribute("experience", s1);
		session.setAttribute("languages", s2);
		
		/*
		Cookie c1 = new Cookie("experience",s1);
		Cookie c2 = new Cookie("languages",s2);
		
		c1.setMaxAge(60*60*24*30);
		response.addCookie(c1);
		response.addCookie(c2);
		*/
		
		out.println("<body bgcolor=cyan>");
		out.println("<h2>"+ session.getId()+" - "+session.isNew()+"</h2>");
		out.println("<form action=form4 method=get>");
		out.println("<h2>");
		out.println("Exp salary <input type=text name=t6 size=25><br><br>");
		out.println("<input type=submit value=Submit>");
		out.println("</form></body>");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}