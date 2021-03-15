<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book JSP</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String sb=request.getParameter("submit");
%>
<jsp:useBean id="list" class="java.util.ArrayList" scope="session"></jsp:useBean>
<jsp:useBean id="book" class="beans.Book" >
   <jsp:setProperty name="book" property="*"/>
</jsp:useBean>
<%    
   if(sb.equals("新增"))
        list.add(book);
   if(sb.equals("修改")){
	  int idx=list.indexOf(book); 
	  if(idx>=0){
		 list.set(idx,book); 
	  }else{
		  out.println("找不倒修改物件");
	  }
   }

%>
<table border="1" width="50%">
<%
   for(Object bks : list){
	   beans.Book b=(beans.Book)bks; 
%>
    <tr>
    <td><%=b.getBookname() %></td>
    <td><%=b.getAuthor() %></td>
    <td><%=b.getPrice() %></td>
    </tr>
<% } %>
</table>
</body>
</html>