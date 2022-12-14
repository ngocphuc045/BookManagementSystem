<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<%@include file="All_component/css.jsp" %>
</head>
<body style="background-color: #f9f4f4 ;">
<%@include file="All_component/navbar.jsp" %>
<div class="container">
<div class="row mt-4">
<div class="col-md- offset-md-4">
<div class="card">
<div class="card-body">
<h3 class="text-center">Login Form</h3>

<c:if test="${not empty failedMsg }">
<h5 class="text-center text-danger">${failedMsg }</h5>
<c:remove var="failedMsg" scope="session"/>
</c:if>
<c:if test="${not empty succMsg }">
<h5 class="text-center text-success">${succMsg }</h5>
<c:remove var="succMsg" scope="session"/>
</c:if>




<form action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
  </div>
  
  <div class="text-center">
  <button type="submit" class="btn btn-primary">LogIn</button> <br>
  <a href="register.jsp">Create Account</a>
  </div>
</form>

</div></div></div></div></div>
</body>
</html>