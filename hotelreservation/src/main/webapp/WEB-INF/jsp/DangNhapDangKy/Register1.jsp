<html class="no-js" lang="en" xmlns:form="http://www.w3.org/1999/html">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
	<title>Login V1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/css/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="assets/images/img-01.png" alt="IMG">
				</div>

				<form:form class="login100-form validate-form" method="POST" modelAttribute="userForm">
					<span class="login100-form-title">
						Create your account
					</span>

					<spring:bind path="username">
					<div class="wrap-input100 validate-input ${status.error ? 'has-error' : ''}" data-validate = "Username is required">
						<form:input class="input100" type="text" path="username" placeholder="Email"></form:input>
						<form:errors path="username"></form:errors>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					</spring:bind>

					<spring:bind path="password">
					<div class="wrap-input100 validate-input ${status.error ? 'has-error' : ''}" data-validate = "Password is required">
						<form:input class="input100" type="password" path="password" placeholder="Password"></form:input>
						<form:errors path="password"></form:errors>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					</spring:bind>

					<spring:bind path="passwordConfirm">
					<div class="wrap-input100 validate-input ${status.error ? 'has-error' : ''}" data-validate = "Password is required">
						<form:input class="input100" type="password" path="passwordConfirm" placeholder="Password Confirm"></form:input>
						<form:errors path="passwordConfirm"></form:errors>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					</spring:bind>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Register
						</button>
					</div>


					<div class="text-center p-t-136">
						<a class="txt2" href="/login">
							<i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
							Do you already have an account?
						</a>
					</div>

				</form:form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="assets/css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/css/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/css/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="assets/js/main.js"></script>

</body>
</html>