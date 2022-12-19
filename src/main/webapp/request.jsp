<%!
String username;
String password;
%>
<h2>
<% 
username = request.getParameter("txt_uid");
password = request.getParameter("txt_pwd"); 
out.println("User name = " + username + "<br>");
out.println("Password = " + password + "<br>");
 
%>


<hr>

Server Name = <%=request.getServerName() %> <br>
Server Port = <%=request.getServerPort() %> <br>
Protocol = <%=request.getProtocol() %> <br>
Method Name = <%=request.getMethod() %> <br>
Content Type = <%=request.getContentType() %> <br>
Content Size = <%=request.getContentLength() %> <br>
Application = <%=request.getContextPath() %> <br>


</h2>