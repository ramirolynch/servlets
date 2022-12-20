<%@page import="java.util.Date" info="this page demonstrates page directive" language="java" contentType="text-html"%>
<h2 style=text-align:center>
<%!
Date today;
%>
<%
today = new Date();
out.println(today);
%>
</h2>

<h2>
<%
out.println(getServletInfo());
%>


</h2>