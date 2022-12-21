<%@page isErrorPage="true" %>

<body style="background-color:lightblue;color:red;font-size:24px;">

<%
if(exception instanceof ArithmethicException) {
	out.println("Exception: "+ exception.toString());
}
else if (exception instanceof ArrayOutOfBoundsException) {
	out.println(exception.getMessage());
}
else {
	out.println("Internal Server Error");	
}	
%> 
</body>

