<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style type="text/css">
		/* General Styles */
		body {
			font-family: 'Poppins', sans-serif;
			margin: 0;
			padding: 0;
			box-sizing: border-box;
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
		
		.btn {
			background: #ffcc00;
			padding: 8px 15px;
			border-radius: 5px;
			color: black;
			font-weight: 600;
			text-decoration: none;
		}
		
		/* Hero Section */
		.hero {
			margin-top:13vh;
			height: 90vh;
			display: flex;
			justify-content: center;
			align-items: center;
			background:
				url('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiSz-l4jEaioUmplfsHHWSkIVzdljJURHQfx_zIgUXJrHhURbnYG_ctj_ywdBZ06dSbRi21EnqsRn0qvEYk71qbFN_Q5BltcivQzhl5SludhY2KXGStxDaikrQzqrv6YCiEZTRph8rY1Cw/s600/Employee+Management+System+Project.webp')
				center/cover no-repeat;
			color: white;
			text-align: center;
		}
		
		.hero-content {
			background: rgba(0, 0, 0, 0.6);
			padding: 30px;
			border-radius: 10px;
		}
		
		.hero h1 {
			font-size: 40px;
		}
		
		.hero p {
			font-size: 18px;
			margin: 15px 0;
		}
		
		/* Features Section */
		.features {
			padding: 60px 10%;
			text-align: center;
		}
		
		.features h2 {
			font-size: 32px;
		}
		
		.features-container {
			display: flex;
			justify-content: space-between;
			gap: 20px;
			margin-top: 20px;
		}
		
		.feature-box {
			background: white;
			padding: 20px;
			border-radius: 10px;
			text-align: center;
			flex: 1;
		}
		
		.feature-box i {
			font-size: 40px;
			color: #ffcc00;
		}
		
		.feature-box h3 {
			font-size: 22px;
		}
		
		/* About Section */
		.about {
			text-align: center;
			padding: 60px 10%;
			background: #ddd;
		}
		
		/* Contact Section */
		.contact {
			text-align: center;
			padding: 60px 10%;
		}
		
		.contact form {
			display: flex;
			flex-direction: column;
			width: 40%;
			margin: auto;
		}
		
		.contact input, .contact textarea {
			padding: 10px;
			margin-bottom: 10px;
		}
		
		/* Footer */
		footer {
			background: #222;
			color: white;
			text-align: center;
			padding: 20px;
		}
		
		.social-icons a {
			color: white;
			margin: 0 10px;
			font-size: 20px;
		}
</style>
</head>
<body>

    <!-- Navigation Bar -->
    <header>
        <nav>
            <div class="logo">EMS</div>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="#features">Features</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="login.html" class="btn">Login</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="hero-content">
            <h1>Manage Your Employees Efficiently</h1>
            <p>A modern, user-friendly Employee Management System to streamline HR processes.</p>
            <a href="manageEmp.jsp" class="btn">Get Started</a>
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="features">
        <h2>Key Features</h2>
        <div class="features-container">
            <div class="feature-box">
                <i class="fas fa-user-plus"></i>
                <h3>Employee Management</h3>
                <p>Add, update, and manage employee records seamlessly.</p>
            </div>
            <div class="feature-box">
                <i class="fas fa-calendar-check"></i>
                <h3>Attendance Tracking</h3>
                <p>Monitor employee attendance with real-time reports.</p>
            </div>
            <div class="feature-box">
                <i class="fas fa-money-bill-wave"></i>
                <h3>Payroll System</h3>
                <p>Automate salary calculations and generate payslips.</p>
            </div>
            <div class="feature-box">
                <i class="fas fa-chart-line"></i>
                <h3>Reports & Analytics</h3>
                <p>Gain insights with performance and payroll reports.</p>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <h2>About EMS</h2>
        <p>Our Employee Management System is designed to simplify workforce management, enhance productivity, and ensure seamless HR operations.</p>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <h2>Contact Us</h2>
        <form>
            <input type="text" placeholder="Your Name" required>
            <input type="email" placeholder="Your Email" required>
            <textarea placeholder="Your Message" required></textarea>
            <button type="submit" class="btn">Send Message</button>
        </form>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Employee Management System | Designed by AnkitDeveloperx</p>
        <div class="social-icons">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-linkedin"></i></a>
        </div>
    </footer>

</body>
</html>
