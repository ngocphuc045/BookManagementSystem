<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<div class="container-fluid" style="height:10px; background-color: #eee3e7"></div>

<div class="container-fluid p-3 bg-light">
<div class="row">
<div class="col-md-3 text-success">
<h3>
<i class="fa-solid fa-book"></i> E-BOOKS
</h3>
</div>
<div class="col-md-6">
<form class="form-inline my-2 my-lg-0" action="search.jsp" method="post">
      <input class="form-control mr-sm-2" type="search" name="ch" placeholder="Search" aria-label="Search">
      <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
    </form>
    </div>
    
    <c:if test="${not empty userobj }">
    <div class="col-md-3">
    <a href="checkout.jsp"><i class="fa-solid fa-cart-plus fa-2x"></i></a>
    
    <a href="login.jsp" class="btn btn-success ml-4"><i class="fas fa-user-plus"></i> ${userobj.name}</a>
    <a href="logout" 
    class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Logout</a>
    </div>
    </c:if>
    
    <c:if test="${empty userobj }">
    <div class="col-md-3">
    <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-lock"></i> Login</a>
    
    
    <a href="register.jsp" 
    class="btn btn-primary"><i class="fa-solid fa-user-plus"></i>Register</a>
    </div>
    </c:if>
    
    
</div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"> <i class="fa-solid fa-house"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="all_recent_book.jsp"><i class="fa-solid fa-book-open-reader"></i> Best Selling</a>
      </li>
     
      <li class="nav-item active">
        <a class="nav-link" href="all_new_book.jsp"><i class="fa-solid fa-book"></i> New Book</a>
      </li>
     
      <li class="nav-item active">
        <a class="nav-link disabled" href="all_old_book.jsp"><i class="fa-solid fa-book-open"></i> Old Book</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
         <a href="setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa-solid fa-gear"></i> Setting</a>
         
      <button class="btn btn-light my-2 my-sm-0 ml-3" type="submit"><i class="fa-brands fa-telegram"></i> Contact</button>
    </form>
  </div>
</nav>