
<jsp:useBean id="prod" class="com.practicejsp.models.Product"></jsp:useBean>

<jsp:setProperty property="*" name="prod" /><br>

<h2>
	Product Id = <jsp:getProperty name="prod" property="productId" /><br> 
	Product Name = <jsp:getProperty name="prod" property="productName" /><br>
	Product Price = <jsp:getProperty name="prod" property="productPrice" /><br>
	<hr>
	Product Name = ${prod.productName}
</h2>

<hr>



