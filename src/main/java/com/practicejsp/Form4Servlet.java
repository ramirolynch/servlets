package com.practicejsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Cookie;


/**
 * Servlet implementation class Form1Servlet
 */
@WebServlet("/form4")
public class Form4Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		out.println("<body bgcolor=cyan>");
		out.println("<h2>"+ session.getId()+" - "+session.isNew()+"</h2>");
		out.println("<h2>");
		
		Enumeration<String> en = session.getAttributeNames();
		
		while(en.hasMoreElements()) {
			String name = en.nextElement();
			String value = session.getAttribute(name).toString();
			out.println(name+" = "+value+",<br>");
		}
		
		
		/*
		Cookie[] cookies = request.getCookies();
		
		
		for (Cookie cookie:cookies) {
			String cname = cookie.getName();
			String cvalue = cookie.getValue();
			out.println(cname + " = " + cvalue + "<br>");
			
		}
		*/
		out.println("Salary = " + request.getParameter("t6") + "<br>");
		out.println("</h2>");
		out.println("</body>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}