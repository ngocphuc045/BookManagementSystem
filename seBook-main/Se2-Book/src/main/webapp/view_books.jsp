<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.DB.DBConnect" %>
    <%@page import="com.DAO.BookDAOImpl" %>
    <%@page import="com.entity.BookDtls" %>
    <%@page import="java.util.List" %>
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="All_component/css.jsp"%>
</head>
<body style="background-color: #f0fcff;">
<%@include file="All_component/navbar.jsp"%>

<%
int bid=Integer.parseInt(request.getParameter("bid"));
BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
BookDtls b=dao.getBookByID(bid);
%>

<div class="container p-3">
<div class="row">
<div class="col-md-6 text-center p-5 border bg-white">
<img alt="" src="book/<%=b.getPhotoName() %>" style="height:200px; width:150px"><br>
<h4 class="mt-3">Book Name:<span class="text-success"> <%=b.getBookName() %></span></h4>
<h4>Author name: <span class="text-success"> <%=b.getAuthor() %></span></h4>
<h4>Category:<span class="text-success"> <%=b.getBookCategory() %></span></h4>
</div>
<div class="col-md-6 text-center p-5 border bg-white">
<h2><%=b.getBookName() %></h2>

<%
if("Old".equals(b.getBookCategory())){%>
	<h5 style="color: gray">Contact To Seller</h5>
	<h5 style="color: brown""><i class="fa-solid fa-envelope"></i> Email: <%=b.getEmail() %></h5>
<%
}

%>

<div class="row">
<div class="col-md-4 text-primary text-center p-2">
<i class="fa-solid fa-wallet fa-2x"></i>
<p>Cash On Delivery</p>
</div>
<div class="col-md-4 text-primary text-center p-2">
<i class="fa-solid fa-arrow-rotate-left fa-2x"></i>
<p>Return Available</p>
</div>
<div class="col-md-4 text-primary text-center p-2">
<i class="fa-solid fa-truck-moving text-black fa-2x"></i>
<p>Free Shipping</p>
</div>
</div>
<%if("Old".equals(b.getBookCategory())){
	%>
<div class="text-center text-white p-3">
<a href="index.jsp" class="btn btn-success"><i class="fa-solid fa-cart-plus"></i> Continue Shopping</a>
<a class="btn btn-danger"><i class="fa-solid fa-dollar-sign"></i> 200</a>
</div>	
<%	
}else{
	%>
	<div class="text-center text-white p-3">
<a class="btn btn-success"><i class="fa-solid fa-cart-plus"></i> Add Card</a>
<a class="btn btn-danger"><i class="fa-solid fa-dollar-sign"></i> 200</a>
</div>
	<%
}

%>



</div>
</div>


</div>
</body>
</html>