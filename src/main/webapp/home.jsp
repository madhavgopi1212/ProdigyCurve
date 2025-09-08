<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProdigyCurve.com</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <header>
        <h2 class="logo">ProdigyCurve</h2>
        <nav class="navigation">
            <button class="btnLogin-popup">Login</button>
        </nav>
    </header>

    <div class="intro">
    	<h2>This is the place</h2>
    	<h1>Where knowledge meets challenge</h1>
    	<h3>Create, Challenge and Conquer</h3>
    </div>

    <div class="image">
    	<img alt="" src="images/prodhome.png">
    </div>

    <div class="abstract">
	    <h2>Welcome to Prodigy Curve</h2>
	    <p>
	        Prodigy Curve is a place where knowledge meets challenge.  
	        It is designed to inspire curiosity, encourage learning, and spark growth.  
	        Join us to create, explore, and conquer new horizons.  
	    </p>
	</div>
    
    <div class="wrapper">
        <span class="icon-close"><ion-icon name="close-outline"></ion-icon></span>        
        
        <!-- Login Form -->
        <div class="from-box login">
            <h2>Login</h2>

            <!-- Display Login Error if available -->
            <p style="color:red;">
                <%= request.getAttribute("loginError") != null ? request.getAttribute("loginError") : "" %>
            </p>

            <form action="/CBITApplication/login" method="POST">
                <div class="input-box">
                    <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
                    <input type="email" id="email" name="email" placeholder=" " required>
                    <label for="email">E-mail</label>
                </div>
                <div class="input-box">
                    <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                    <input type="password" name="password" required>
                    <label>Password</label>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox">Remember me</label>
                    <a href="#">Forgot Password</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <div class="login-register">
                    <p>Don't have an account? <a href="#" class="register-link">register</a></p>
                </div>
            </form>
        </div>

        <!-- Registration Form -->
        <div class="from-box register">
            <h2>Registration</h2>

            <!-- Display Registration Message if available -->
            <p style="color:green;">
                <%= request.getAttribute("signupMsg") != null ? request.getAttribute("signupMsg") : "" %>
            </p>

            <form action="/CBITApplication/signup" method="POST">
                <div class="input-box">
                    <span class="icon"><ion-icon name="person-outline"></ion-icon></span>
                    <input type="text" name="userid" required>
                    <label>UserId</label>
                </div>
                <div class="input-box">
                    <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
                    <input type="email" name="email" required>
                    <label>E-mail</label>
                </div>
                <div class="input-box">
                    <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                    <input type="password" name="password" required>
	                    <label>Password</label>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox"> I agree to the Terms & Conditions</label>
                </div>
                <button type="submit" class="btn">Register</button>
                <div class="login-register">
                    <p>Already have an account? <a href="#" class="login-link">Login</a></p>
                </div>
            </form>
        </div>
    </div>

	<footer>
	   <p>2025 ProdigyCurve | <a href="mailto:arunyarru@gmail.com">Contact Us</a></p>
	</footer>

    <!-- Scripts -->
    <script src="./script.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
