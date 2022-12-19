<%!
String cname = "edureka limited"; // instance
public int add(int x, int y) {
	return x+y;
}
%>

<h2>
Company name = <%=cname %>
<br><br>
<%="Sum = "+add(11,23)%>
</h2>