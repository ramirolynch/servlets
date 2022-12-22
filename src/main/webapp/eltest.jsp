<h2>
<%
out.println("User Name = " + request.getParameter("txt_uid"));
%>
<br>
User Name = ${param.txt_uid}
<hr>

<%
out.println("User Name = " + request.getParameter("txt_uidd"));
%>

<br>
<!-- takes care of null gracefully -->
User Name = ${param.txt_uidd}

</h2>