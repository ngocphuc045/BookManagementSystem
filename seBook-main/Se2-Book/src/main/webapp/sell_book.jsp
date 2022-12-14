<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Book</title>
<%@include file="All_component/css.jsp"%>
</head>
<body style="background-color: #eee3e7">

<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="All_component/navbar.jsp"%>

<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card mt-3">
<div class="card-body">

<h5 class="text-center text-primary p-2">Sell Old Book</h5>


<c:if test="${not empty succMsg }">
<p class="text-center text-success">${succMsg }</p>
<c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg }">
<p class="text-center text-danger">${failedMsg }</p>
<c:remove var="failedMsg" scope="session"/>
</c:if>


<form action="add_old_book" method="post"
      enctype="multipart/form-data">
      <input type="hidden" value="${userobj.email }" name="user">

    <div class="form-group">
        <label for="exampleInputEmail1">Book Name</label> <input
            name="bname" type="text" class="form-control"
            id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Author Name</label> <input
            name="author" type="text" class="form-control"
            id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>

    <div class="form-group">
        <label for="exampleInputPassword1">Price*</label> <input
            name="price" type="number" class="form-control"
            id="exampleInputPassword1">
    </div>


    <div class="form-group">
        <label for="exampleFormControlFile1">Upload Photo</label> <input
            name="bimg" type="file" class="form-control-file"
            id="exampleFormControlFile1">
    </div>

    <button type="submit" class="btn btn-primary">Sell</button>
</form>
</div>
</div>
</div>
</div>

</div>


</body>
</html>