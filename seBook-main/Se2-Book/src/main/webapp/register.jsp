
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false" %>

<!DOCTYPE html>

<html>

<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="All_component/css.jsp" %>
</head>
<body style="background-color: #f9f4f4 ;">
<%@include file="All_component/navbar.jsp" %>

<div class="container ml-4 p-4">
<div class="row">
<div class="col-md offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center">Registration Form</h4>

<c:if test="${not empty succMsg }">
<p class="text-center text-success">${succMsg }</p>
<c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg}">
<p class="text-center text-danger">${failedMsg }</p>
<c:remove var="failedMsg" scope="session"/>
</c:if>

<form action="register" method="post">
<div class="form-group">
    <label for="exampleInputEmail1">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname">

  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">

  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Phone Number</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phno">

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" name="check" 
    id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree term & Condition</label>
  </div>
  <div class="text-center p-2">
  <button type="submit" class="btn btn-primary btn-block btn-sm">Register</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
<div class="container-fluid text-center text-white p-3 mt-2" style="background-color:#011f4b">
<h5><i class="fa-solid fa-copyright"></i> Designed and Developed By Team</h5>
</div>
</body>
</html>