<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: white;
        animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .container {
        background: rgba(255, 255, 255, 0.2);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
        width: 400px;
        text-align: center;
        backdrop-filter: blur(10px);
    }

    h1 {
        font-size: 24px;
        margin-bottom: 20px;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    label {
        display: block;
        font-size: 14px;
        font-weight: bold;
        margin-bottom: 8px;
        text-align: left;
    }

    input {
        width: 90%;
        padding: 12px;
        margin-bottom: 15px;
        border: none;
        border-radius: 6px;
        font-size: 14px;
        background: rgba(255, 255, 255, 0.8);
        transition: all 0.3s ease-in-out;
    }

    input:focus {
        background: white;
        outline: none;
        box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.5);
    }

    button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 6px;
        background: #ff7e5f;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: transform 0.3s ease, background 0.3s ease;
    }

    button:hover {
        background: #feb47b;
        transform: scale(1.05);
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Update Employee Details</h1>
        <form action="update">
            <label>Employee Id</label>
            <input type="text" name="id" value="${e.getId()}" placeholder="${e.getId()}" readonly required>
            
            <label>Full Name</label>
            <input type="text" name="name" placeholder="${e.getName()}" value="${e.getName()}" required>
            
            <label>Email</label>
            <input type="email" name="email" placeholder="${e.getEmail()}" value="${e.getEmail()}">
            
            <label>Phone Number</label>
            <input type="text" name="phone" placeholder="${e.getPhone()}" value="${e.getPhone()}">
            
            <label>Password</label>
            <input type="text" name="password" placeholder="${e.getPassword()}" value="${e.getPassword()}">
            
            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
