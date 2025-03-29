<%@ page import="org.jsp.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employees</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
        background: #f3f6f9;
    }
    
    /* Navigation Bar */
    header {
        background: #333;
        padding: 15px 0;
        position: fixed;
        width: 100%;
        top: 0;
        left: 0;
        z-index: 1000;
    }
    
    nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 5%;
    }
    
    .logo {
        color: white;
        font-size: 24px;
        font-weight: 600;
    }
    
    .nav-links {
        list-style: none;
        display: flex;
    }
    
    .nav-links li {
        margin: 0 15px;
    }
    
    .nav-links a {
        text-decoration: none;
        color: white;
        font-weight: 400;
        transition: 0.3s;
    }
    
    .nav-links a:hover {
        color: #ffcc00;
    }
    
    .container {
        width: 80%;
        margin: 100px auto 50px;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        text-align: center;
    }
    
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    
    th, td {
        border: 1px solid black;
        padding: 12px;
        text-align: center;
    }
    
    th {
        background-color: #007BFF;
        color: white;
    }
    
    button {
        padding: 10px 15px;
        margin: 5px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
    }
    
    .delete {
        background-color: #dc3545;
        color: white;
    }
    
    .update {
        background-color: #ffc107;
        color: black;
    }
    
    button:hover {
        transform: scale(1.05);
    }
    
    h4 {
        color: red;
        font-size: 18px;
        font-weight: bold;
        animation: blink 1s infinite alternate;
    }
    
    @keyframes blink {
        from { opacity: 1; }
        to { opacity: 0; }
    }
</style>
</head>
<body>
    <header>
        <nav>
            <div class="logo">EMS</div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="manageEmp.jsp">Dashboard</a></li>
                <li><a href="createEmp.jsp">Create Employee</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
    </header>
    
    <div class="container">
        <h1>All Employees</h1>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Password</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
            <c:forEach var='e' items="${emps }">
                <tr>
                    <td>${e.getId() }</td>
                    <td>${e.getName() }</td>
                    <td>${e.getEmail() }</td>
                    <td>${e.getPhone() }</td>
                    <td>${e.getPassword() }</td>
                    <td><a href="delete?id=${e.getId()}"><button class="delete">Delete</button></a></td>
                    <td><a href="updatepage?id=${e.getId()}"><button class="update">Update</button></a></td>
                </tr>
            </c:forEach>
        </table>
        <h4>${del }</h4>
    </div>
</body>
</html>
