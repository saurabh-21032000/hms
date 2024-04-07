<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Management</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="left">
    	
    </div>
    <div class="right">
        <div id="add">
            <h2>Add Doctor</h2>
            <form id="add-form" method="post" action="add-doctor">
                <label for="name">Name:</label><br>
                <input type="text" id="name" name="name" required><br>
                
                <label for="email">Email:</label><br>
                <input type="email" id="email" name="email" required><br>
                
                <label for="phone">Phone:</label><br>
                <input type="text" id="phone" name="phone" required><br>
                
                <label for="gender">Gender:</label><br>
                <select id="gender" name="gender">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select><br>
                
                <label for="speciality">Speciality:</label><br>
                <input type="text" id="speciality" name="speciality" required><br>
                
                <label for="experience">Experience:</label><br>
                <input type="text" id="experience" name="experience" required><br>
                
                <label for="rating">Rating:</label><br>
                <input type="text" id="rating" name="rating" required><br>
                
                <input type="submit" value="Add Doctor">
            </form>
        </div>

        <div id="delete">
            <h2>Delete Doctor</h2>
            <form id="delete-form" method="post" action="delete-doctor">
                <label for="delete-email">Email:</label><br>
                <input type="email" id="delete-email" name="email" required><br>
                <input type="submit" value="Delete Doctor">
            </form>
        </div>

        <div id="edit">
            <h2>Edit Doctor</h2>
            <form id="edit-form" method="post" action="edit-doctor">
                <label for="edit-email">Email:</label><br>
                <input type="email" id="edit-email" name="email" required><br>
                <input type="submit" value="Edit Doctor">
            </form>
        </div>
    </div>
    
    <script></script>
</body>
</html>
