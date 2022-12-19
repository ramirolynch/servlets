<%
String uname = request.getParameter("txt_uid");
String pass = request.getParameter("txt_pwd");

if(uname.equals("admin") && pass.equals("1234")) {
	response.sendRedirect("https://www.clarin.com");
	
}else {
	response.sendError(response.SC_UNAUTHORIZED, "invalid username/password");
}

%>
