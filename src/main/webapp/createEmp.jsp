<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Employee Account</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        /* General Styles */
        body {
            font-family: 'Poppins', sans-serif;
            background: #f3f6f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: #ffffff;
            padding-top: 60px;
        }

        /* Form Container */
        .form-container {
        	margin-top: 12vh;
            background: white;
            width: 400px;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 15px;
        }

        input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #ffcc00;
            color: black;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background: #e6b800;
        }

        /* Back Button */
        .back-btn {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            font-size: 14px;
            color: #007bff;
            font-weight: 600;
        }

        .back-btn:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
	
	 <header>
        <nav>
            <div class="logo">EMS</div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#features">Features</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="manageEmp.jsp" class="btn">Dashboard</a></li>
            </ul>
        </nav>
    </header>
	
    <div class="form-container">
        <form action="save">
            <h2>Create Employee Account</h2>
            <input type="text" name="name" placeholder="Enter Employee Name" required>
            <input type="email" name="email" placeholder="Enter Employee Email" required>
            <input type="text" name="phone" placeholder="Enter Employee Phone no." required>
            <input type="password" name="password" placeholder="Enter Employee Password" required>
            <button type="submit">Create Account</button>
        </form>
        <a href="manageEmp.jsp" class="back-btn">← Back to Dashboard</a>
    </div>

</body>
</html>
