<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Info</title>
</head>
<body>
<jsp:useBean id="apple" class="beans.Product" scope="request" ></jsp:useBean>
ID: ${apple.id} <br/>
Product Name:${apple.name}<br/>
Price:${apple.price}
</body>
</html>