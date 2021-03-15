<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("utf-8");
   String sb=request.getParameter("submit");
   if(sb.equals("修改"))
	   response.getWriter().println("修改 submit");
   else
	   response.getWriter().println("新增 submit");
%>
</body>
</html>