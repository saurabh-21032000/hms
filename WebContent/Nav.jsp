<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <head>
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
    <style>
        .custom-dropdown-menu {
            min-width: 200px; /* Adjust the width as needed */
        }
    </style>
    <script src="js/script.js"></script>
</head>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img alt="" src="./img/hospital.png" style="width:50px;height:50px;"></a>
    <marquee scrollamount="10" direction="right" behavior="alternate" style="color: white;"><h3>Welcome, Max Hospital</h3></marquee>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#" title="Welcome to my website">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" style="width: 80px;">About us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu custom-dropdown-menu" aria-labelledby="navbarDropdown1">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        
        
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/login.jsp">Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
