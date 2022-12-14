<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="All_component/css.jsp"%>
</head>
<body style="background-color: #f0fcff">
<%@include file="All_component/navbar.jsp"%>

<div class="container">
<div class="row p-3">
<div class="col-md-6 offset-md-3">
<div class="card mt-3">
<div class="card-body">
<h3 class="text-center text-success">Add Address</h3>

<form action="">

 <div class="form-row">
    
   
    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" class="form-control" id="inputPassword4" >
    </div>
  
  <div class="form-group col-md-6">
      <label for="inputPassword4">Landmark</label>
      <input type="text" class="form-control" id="inputPassword4" >
    </div>
  </div>
  
  
  <div class="form-row">
    
    <div class="form-group col-md-4">
      <label for="inputPassword4">City</label>
      <input type="text" class="form-control" id="inputPassword4" >
    </div>
    
     <div class="form-group col-md-4">
      <label for="inputPassword4">State</label>
      <input type="text" class="form-control" id="inputPassword4" >
    </div>
    
     <div class="form-group col-md-4">
      <label for="inputPassword4">Pin Code</label>
      <input type="text" class="form-control" id="inputPassword4" >
    </div>
    
  </div>
  <div class="text-center p-2">
  <button type="submit" class="btn btn-warning text-white btn-block btn-sm ">Add Address</button>
  </div>
  
  
</form>

</div>
</div>
</div>
</div>
</div>

</body>
</html>