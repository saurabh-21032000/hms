<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  font-family: Arial, sans-serif;
  background-image: url("img/login_background1.png");
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 100px;
}

form {
  border: 2px solid black;
  padding: 50px;
  text-align: center;
  border-radius:20px;
}

input {
  display: block;
  margin: 10px auto;
  padding: 10px;
  width: 200px;
  border-radius:5px;
}

button {
  display: block;
  margin: 10px auto;
  color:blue;
  padding: 10px 20px;
  border: 1px solid black;
  background-color: #f0f0f0;
  cursor: pointer;
  border-radius:10px;
}

button:hover {
  background-color: #ddd;
  width: 100px; /* Increase the width */
  height: 50px; /* Increase the height */
}

a {
  display: inline-block; /* Display anchor tags as block elements */
  text-decoration: none;
}

p:hover {
  background-color: blue;
}

a:hover {
  background-color: none;
  width: 100px; /* Increase the width */
  height: 50px; /* Increase the height */
}
</style>
</head>
<body>
<div class="container">
  <form method="post" action="<%= request.getContextPath() %>/LoginServlet">
    <input type="text" placeholder="Enter your name" name="name">
    <input type="password" placeholder="Enter your password" name="pass">
    <button type="submit">Login</button>
  </form>
</div>
</body>
</html>
