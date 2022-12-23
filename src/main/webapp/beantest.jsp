<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beans in JSP</title>
</head>
<body>
<jsp:useBean id="prod" class="com.practicejsp.models.Product"></jsp:useBean>

<h2>
Product Id = <jsp:getProperty name="prod" property="productId"/><br>
Product Name = <jsp:getProperty name="prod" property="productName"/><br>
Product Price = <jsp:getProperty name="prod" property="productPrice"/><br>
</h2>

<hr>

<jsp:setProperty property="productName" name="prod" value="Mobile Phone"/><br>
Product Name = <jsp:getProperty name="prod" property="productName"/><br>
<jsp:setProperty property="productId" name="prod" value="123"/><br>
Product Id = <jsp:getProperty name="prod" property="productId"/><br>
<jsp:setProperty property="productName" name="prod" value="Motorola"/><br>
Product Name = <jsp:getProperty name="prod" property="productName"/><br>

</body>
</html>