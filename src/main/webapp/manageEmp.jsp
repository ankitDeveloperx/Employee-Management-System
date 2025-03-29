<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - Employee Management</title>
<style type="text/css">
				/* General Styles */
			body {
			    font-family: Arial, sans-serif;
			    margin: 0;
			    padding: 0;
			    background-color: #f4f4f4;
			}
			
			/* Header */
			header {
			    display: flex;
			    justify-content: space-between;
			    align-items: center;
			    padding: 15px 50px;
			    background-color: #2c3e50;
			    color: white;
			}
			
			.logo {
			    font-size: 24px;
			    font-weight: bold;
			}
			
			nav ul {
			    list-style: none;
			    padding: 0;
			    margin: 0;
			    display: flex;
			}
			
			nav ul li {
			    margin-left: 20px;
			}
			
			nav ul li a {
			    text-decoration: none;
			    color: white;
			    transition: 0.3s;
			}
			
			nav ul li a:hover {
			    text-decoration: underline;
			}
			
			/* Dashboard Page */
			.dashboard {
			    text-align: center;
			    padding: 60px 20px;
			}
			
			.dashboard h2 {
			    font-size: 32px;
			    margin-bottom: 30px;
			    color: #333;
			}
			
			/* Options Section */
			.options {
			    display: flex;
			    justify-content: center;
			    gap: 30px;
			    flex-wrap: wrap;
			    max-width: 800px;
			    margin: 0 auto;
			}
			
			/* Cards */
			.card {
			    background: white;
			    padding: 25px;
			    width: 280px;
			    text-align: center;
			    border-radius: 10px;
			    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
			    text-decoration: none;
			    color: black;
			    transition: 0.3s ease-in-out;
			}
			
			.card:hover {
			    transform: translateY(-5px);
			    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
			}
			
			.card h3 {
			    margin-bottom: 10px;
			    font-size: 22px;
			    color: #2c3e50;
			}
			
			.card p {
			    font-size: 14px;
			    color: #666;
			}
			
			h6 {
		    color: green;
		    font-size: 18px;
		    font-weight: bold;
		    animation: blink 0.8s infinite alternate;
			}
		
			@keyframes blink {
		    from {
		        opacity: 1;
		    }
		    to {
		        opacity: 0;
		    }
}
				
</style>
</head>
<body>
	<header>
        <div class="logo">EMS</div>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="manageEmp.jsp">Dashboard</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
    </header>

    <section class="dashboard">
        <h2>Welcome to Employee Management System</h2>
        <div class="options">
            <a href="createEmp.jsp" class="card">
                <h3>Create Employee Account</h3>
                <p>Easily add a new employee profile.</p>
                <h6>${save }</h6>
            </a>
            <a href="all" class="card">
                <h3>View All Employees & Manage</h3>
                <p>Check employee records and details.</p>
                <p>Add, update, delete and manage employee records seamlessly.</p>
            </a>
        </div>
    </section>
</body>
</html>