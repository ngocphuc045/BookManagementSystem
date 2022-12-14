<%@page import="com.entity.User"%>
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
<%
User u=(User)session.getAttribute("userobj");


%>
<%@include file="All_component/navbar.jsp"%>
<div class="container-fluid">
<div class="row p-3">

<%
BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list2=dao2.getAllRecentBook();
for(BookDtls b:list2){
%>
<div class="col-md-3">
<div class="card crd-ho mt-2">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 100px; height: 150px"
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
</body>
</html>