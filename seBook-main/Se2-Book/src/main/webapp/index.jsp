<%@page import="java.sql.Connection" %>
<%@page import="com.DB.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.DB.DBConnect" %>
    <%@page import="com.DAO.BookDAOImpl" %>
    <%@page import="com.entity.BookDtls" %>
    <%@page import="java.util.List" %>
    <%@page import="com.entity.User" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<%@include file="All_component/css.jsp"%>

<style type="text/css">
.back-img{
background: url("img/123.png");
height: 55vh;
width: 100%;
background-size: cover;
  
}
.crd-ho:hover{
background-color: #f5f5f5;
}
H2{

color: #F34093;
}
</style>

</head>
<body style="background-color: #dec3c3">

<%
User u=(User)session.getAttribute("userobj");
%>

<%@include file="All_component/navbar.jsp"%>
<div class="container-fluid back-img">
<h2 class="text-center">EBook Management System</h2>
</div>

<!-- Start BestSelling Book -->
<div class="container">
<h3 class="text-center text-blue">BEST SELLING</h3>
<div class="row">

<%
BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list2=dao2.getRecentBooks();
for(BookDtls b:list2){
%>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px"
class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>

<%
if(b.getBookCategory().equals("Old"))
{%>
<p>Categories: <%=b.getBookCategory() %></p>
<div class="row">


<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">Detais <i class="fa-solid fa-eye"></i></a>
<a href="" class="btn btn-danger btn-sm ml-2"><%=b.getPrice() %> <i class="fa-solid fa-dollar-sign"></i></a>
</div>
<%}else{%>

	<p>Categories: <%=b.getBookCategory() %></p>
<div class="row">
<%
if(u==null){%>
<a href="login.jsp" class="btn btn-primary btn-sm ml-3 ">Add <i class="fa-solid fa-cart-plus"></i></a>

<%	
}else{%>
<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-primary btn-sm ml-3 ">Add <i class="fa-solid fa-cart-plus"></i></a>

<%
}
%>

<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">Detais <i class="fa-solid fa-eye"></i></a>
<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %> <i class="fa-solid fa-dollar-sign"></i></a>
</div>
	
	<%

}

%>

</div>
</div>
</div>

<%	
}
%>

</div>
</div>
<div class="text-center mt-3">
<a href="all_recent_book.jsp" class="btn btn-primary btn-sm text-white">View All</a>
</div>

<!-- End BestSelling -->

<hr>

<!-- Start New Book -->
<div class="container">
<h3 class="text-center text-blue">NEW BOOKS</h3>
<div class="row">



<%
BookDAOImpl dao =new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list=dao.getNewBook();
for (BookDtls b :list){
	%>
	<div class="col-md-3">
	<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px"
class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>Categories: <%=b.getBookCategory() %></p>
<div class="row">

<%
if(u==null){%>
<a href="login.jsp" class="btn btn-primary btn-sm ml-3 ">Add <i class="fa-solid fa-cart-plus"></i></a>

<%	
}else{%>
<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-primary btn-sm ml-3 ">Add <i class="fa-solid fa-cart-plus"></i></a>

<%
}
%>



<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">Detais <i class="fa-solid fa-eye"></i></a>
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
<div class="text-center mt-3">
<a href="all_new_book.jsp" class="btn btn-primary btn-sm text-white">View All</a>
</div>

<!-- End New -->




<hr>
<!-- Start Old Book -->
<div class="container">
<h3 class="text-center text-blue">OLD BOOKS</h3>
<div class="row">

<%
BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list3=dao3.getOldBooks();
for(BookDtls b:list3){
%>
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px"
class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>Categories: <%=b.getBookCategory() %></p>
<div class="row">

<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">Detais <i class="fa-solid fa-eye"></i></a>
<a href="" class="btn btn-danger btn-sm ml-2"><%=b.getPrice() %> <i class="fa-solid fa-dollar-sign"></i></a>
</div>
</div>
</div>
</div>
	
	<%

}

%>


</div>
<div class="text-center mt-3">
<a href="all_old_book.jsp" class="btn btn-primary btn-sm text-white">View All</a>
</div>
</div>
<!-- End Old-->
<div class="container-fluid text-center text-white p-3 mt-2" style="background-color: #011f4b">
<h5><i class="fa-solid fa-copyright"></i> Designed and Developed By Team SE2</h5>
</div>
</body>
</html>