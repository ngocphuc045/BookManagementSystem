<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
    <%@page import="java.sql.Connection" %>

    <%@page import="com.DB.DBConnect" %>
    <%@page import="com.DAO.BookDAOImpl" %>
    <%@page import="com.entity.BookDtls" %>
    <%@page import="java.util.List" %>
    <%@page import="com.entity.User" %>
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
/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */

</style>
</head>
<body>
<%
User u=(User)session.getAttribute("userobj");


%>
<c:if test="${not empty addCart }">
<div id="toast"> ${addCart} </div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
<c:remove var="addCart" scope="session"/>

</c:if>

<%@include file="All_component/navbar.jsp"%>
<div class="container-fluid">
<div class="row p-3">

<%
BookDAOImpl dao =new BookDAOImpl(DBConnect.getConn());
List<BookDtls> list=dao.getAllNewtBook();
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
</body>
</html>