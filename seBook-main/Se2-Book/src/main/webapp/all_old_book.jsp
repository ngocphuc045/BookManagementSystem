<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection" %>

    <%@page import="com.DB.DBConnect" %>
    <%@page import="com.DAO.BookDAOImpl" %>
    <%@page import="com.entity.BookDtls" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Bestselling Book</title>
<%@include file="All_component/css.jsp"%>
<style type="text/css">

.crd-ho:hover{
background-color: #f5f5f5;
}
</style>
</head>
<body>
<%@include file="All_component/navbar.jsp"%>
<div class="container-fluid">
<div class="row p-3">

<%
BookDAOImpl dao =new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list=dao.getAllOldBook();
for (BookDtls b :list){
	%>
	<div class="col-md-3">
	<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 100px; height: 150px"
class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>Categories: <%=b.getBookCategory() %></p>
<div class="row ml-5">

<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ">Detais <i class="fa-solid fa-eye"></i></a>
<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %> <i class="fa-solid fa-dollar-sign"></i></a>
</div>
</div>
</div>
</div>
	<%
}
%>

</div>
</div>
</body>
</html>