<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Form</title>
<style>
/* CSS for hiding/showing admin pin input field */
#adminPin {
    display: none;
}

/* CSS to display admin pin input field when role is selected as Admin */
#role[value="Admin"] ~ #adminPin {
    display: block;
}

/* Basic styling */
body {
    font-family: Arial, sans-serif;
}

form {
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 300px;
}

input, select, button {
    display: block;
    margin-bottom: 10px;
    width: 100%;
    padding: 5px;
    border-radius: 3px;
    border: 1px solid #ccc;
}

button {
    background-color: #f0f0f0;
    cursor: pointer;
}

button:hover {
    background-color: #ddd;
}

</style>
</head>
<body>
<form action="SignupServlet" method="get">
    <input type="text" placeholder="Enter your name" name="name">
    <input type="password" placeholder="Enter your password" name="pass">
    <input type="email" placeholder="Enter your email" name="email">
    <input type="number" placeholder="Enter your phone" name="phone">
    <select name="gender">
        <option value="Male">Male</option>
        <option value="Female">Female</option>
    </select>
    <select id="role" name="role">
        <option value="">Select role</option>
        <option value="Admin">Admin</option>
        <option value="User">User</option>
    </select>
    <input id="adminPin" type="text" placeholder="Enter Admin Password" name="pin">
    <button type="submit">Submit</button>
</form>

<script>
document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("role").addEventListener("change", function(e) {
        var ele = document.getElementById("role");
        var adminPin = document.getElementById("adminPin");
        if (ele.value === "Admin") {
            adminPin.style.display = "block";
        } else {
            adminPin.style.display = "none";
        }
    });
});
</script>
</body>
</html>
