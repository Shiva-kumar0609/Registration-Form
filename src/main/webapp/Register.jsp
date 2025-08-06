<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f4f4;
        padding: 20px;
    }
    .container {
        max-width: 400px;
        margin: auto;
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
    }
    input, select {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .gender-group {
        display: flex;
        gap: 15px;
        margin-top: 5px;
    }
    .gender-group input {
        width: auto;
    }
    input[type=submit] {
        background: #28a745;
        color: white;
        border: none;
        cursor: pointer;
        margin-top: 15px;
    }
    input[type=submit]:hover {
        background: #218838;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Registration Form</h2>
    <form action="regForm" method="post">
        <label>Name:</label>
        <input type="text" name="name1" required>

        <label>Email:</label>
        <input type="email" name="email1" required>

        <label>Password:</label>
        <input type="password" name="pass1" required>

        <label>Gender:</label>
        <div class="gender-group">
            <label><input type="radio" name="gender1" value="Male" required> Male</label>
            <label><input type="radio" name="gender1" value="Female"> Female</label>
        </div>

        <label>City:</label>
        <select name="city1" required>
            <option value="">Select City</option>
            <option value="Delhi">Delhi</option>
            <option value="Mumbai">Mumbai</option>
            <option value="Hyderabad">Hyderabad</option>
            <option value="Pune">Pune</option>
        </select>

        <input type="submit" value="Register">
    </form>
</div>

</body>
</html>
