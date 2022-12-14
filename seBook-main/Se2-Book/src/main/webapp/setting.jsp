<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="All_component/css.jsp"%>
<style type="text/css">
a{
text-decoration:none;
color:black;
}
a:hover{
text-decoration:none;
}

</style>

</head>
<body  style="background-color: #eee3e7">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="All_component/navbar.jsp"%>

<div class="container">

<h3 class="text-center text-danger">Hello, ${userobj.name }</h3>

<div class="row p-5">

<div class="col-md-4">
<a href="sell_book.jsp">
<div class="card">
<div class="card-body text-center">
<div class="text-primary">
<i class="fa-solid fa-address-book fa-3x"></i>
</div>
<h3>Sell Old Book</h3>
</div>
</div>
</a>
</div>

<div class="col-md-4">
<a href="old_book.jsp">
<div class="card">
<div class="card-body text-center">
<div class="text-primary">
<i class="fa-solid fa-address-book fa-3x"></i>
</div>
<h3>Old Book</h3>
</div>
</div>
</a>
</div>

<div class="col-md-4">
<a href="edit_profile.jsp">
<div class="card">
<div class="card-body text-center">
<div class="text-primary">
<i class="fa-solid fa-pen-to-square fa-3x"></i>
</div>
<h3>Edit Profile</h3>
</div>
</div>

</a>
</div>




<div class="col-md-6 mt-3">
<a href="order.jsp">
<div class="card">
<div class="card-body text-center">
<div class="text-danger">
<i class="fa-solid fa-box-archive fa-3x"></i>
</div>
<h3>My Order</h3>
<p>Track Your Order</p>
</div>
</div>

</a>
</div>

<div class="col-md-6 mt-3">
<a href="helpline.jsp">
<div class="card">
<div class="card-body text-center">
<div class="text-primary">
<i class="fa-solid fa-circle-question fa-3x text-warning"></i>
</div>
<h3>Help Center</h3>
<p>24/7 Service</p>
</div>
</div>

</a>
</div>




</div>
</div>

<div style="margin-top:60px;">
<div class="container-fluid text-center text-white p-3 mt-2" style="background-color: #011f4b">
<h5><i class="fa-solid fa-copyright"></i> Designed and Developed By Team</h5>
</div>
</div>
</body>
</html>