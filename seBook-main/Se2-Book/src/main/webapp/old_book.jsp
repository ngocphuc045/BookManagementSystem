<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BookDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User:Old Book</title>
<%@include file="All_component/css.jsp"%>
</head>
<body style="background-color: #f0fcff">
<%@include file="All_component/navbar.jsp"%>

<c:if test="${not empty succMsg }">
<div class="alert alert-success text-center">${succMsg }</div>
<c:remove var="succMsg" scope="session"/>
</c:if>

<div class="container p-5">
<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <%
  User u=(User)session.getAttribute("userobj");
  String email=u.getEmail();
  BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
  List<BookDtls> list=dao.getBookByOld(email, "Old");
  for(BookDtls b:list){%>
	  <tr>
     <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getBookCategory() %></td>
      <td><a href="delete_old_book?em=<%=email %>&&id=<%=b.getBookId() %>" class="btn btn-sm btn-danger">Delete</a></td>
    </tr>	
  <%}

  %>
    
    
   
  </tbody>
</table>

</div>
</body>
</html>