<%@page import="com.entity.Book_Order"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addmin: All Orders</title>
<%@include file="css.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<c:if test="${empty userobj }">
<c:redirect url="../login.jsp" />
</c:if>
<h3 class="text-center">Hello Admin</h3>
<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">OrderId</th>
      <th scope="col">Name</th>
      <th scope="col">EMail</th>
      <th scope="col">Address</th>
      <th scope="col">PhoneNo</th>
      <th scope="col">BookName</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment</th>
      
    </tr>
  </thead>
  <tbody>
  <%
  BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
  List<Book_Order> blist=dao.getAllOrder();
  for(Book_Order b : blist){%>
  
  <tr>
      <th scope="row"><%=b.getOrderId() %></th>
      <td><%=b.getUserName() %></td>
      <td><%=b.getEmail() %></td>
      <td><%=b.getFulladd() %></td>
      <td><%=b.getPhno() %></td>
      <td><%=b.getBookName() %></td>
       <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getPaymentType() %></td>
    </tr>
	<%  
  }
  %>
    
    
  </tbody>
</table>
<div style="margin-top:270px;"><%@include file="footer.jsp" %></div>
</body>
</html>