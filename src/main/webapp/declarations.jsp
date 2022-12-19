<%!
String cname = "edureka limited"; // instance
public int add(int x, int y) {
	return x+y;
}
%>

<h2>
<%
String courseName = "Java"; // local variable
out.println("Company name = "+cname+ "<br><br>");
out.println("Sum = "+add(10,12));
%>
</h2>