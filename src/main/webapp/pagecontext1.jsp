<h2>
<%
String uname = request.getParameter("txt_uid");
pageContext.setAttribute("uid",uname, PageContext.SESSION_SCOPE);

out.println("Hello " + uname);
%>
</h2>
<a href="pagecontext2.jsp">Next Page</a>