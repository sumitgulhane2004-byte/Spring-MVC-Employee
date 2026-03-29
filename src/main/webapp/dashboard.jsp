<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashbord</title>
<style>

/* ===== Animated Background ===== */
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(-45deg, #141e30, #243b55, #0f2027, #203a43);
	background-size: 400% 400%;
	animation: gradientBG 10s ease infinite;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

@
keyframes gradientBG { 0% {
	background-position: 0% 50%;
}

50
%
{
background-position
:
100%
50%;
}
100
%
{
background-position
:
0%
50%;
}
}

/* ===== Card ===== */
.container {
	background: rgba(255, 255, 255, 0.1);
	padding: 40px;
	border-radius: 15px;
	backdrop-filter: blur(15px);
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
	text-align: center;
	color: white;
	width: 350px;
	animation: fadeIn 1s ease-in-out;
}

@
keyframes fadeIn {
	from {opacity: 0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
input {
	width: 90%;
	padding: 10px;
	margin: 10px 0;
	border-radius: 8px;
	border: none;
	outline: none;
}

button {
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	background: #00c6ff;
	color: white;
	cursor: pointer;
	transition: 0.3s;
}

button:hover {
	background: #0072ff;
	transform: scale(1.05);
}

/* ===== Panda ===== */
.panda {
	position: relative;
	width: 120px;
	height: 100px;
	margin: 0 auto 20px auto;
}

.face {
	width: 100px;
	height: 100px;
	background: white;
	border-radius: 50%;
	position: relative;
	margin: auto;
}

.eye {
	width: 20px;
	height: 25px;
	background: black;
	border-radius: 50%;
	position: absolute;
	top: 30px;
}

.eye.left {
	left: 20px;
}

.eye.right {
	right: 20px;
}

.eye::after {
	content: '';
	width: 10px;
	height: 10px;
	background: white;
	border-radius: 50%;
	position: absolute;
	top: 5px;
	left: 5px;
}

/* Closed eyes */
.closed {
	height: 3px !important;
	background: black;
	border-radius: 5px;
	top: 42px !important;
}

.password-container {
	position: relative;
}

.toggle-eye {
	position: absolute;
	right: 25px;
	top: 18px;
	cursor: pointer;
	color: black;
}
</style>

</head>
<body>
	<div class="container">

		<div class="panda">
			<div class="face">
				<div class="eye left" id="eye1"></div>
				<div class="eye right" id="eye2"></div>
			</div>
		</div>

		<h2>Welcome to Dashboard ${key}</h2>

		<form action="addemployee" method="post">

			<input type="text" name="name" placeholder="Enter Name" required>
			<input type="text" name="role" placeholder="Enter Role" required>
			<input type="text" name="salary" placeholder="Enter Salary" required>

			<!-- Password Field -->
			<div class="password-container">
				<input type="password" id="password" placeholder="Enter Password">
				<span class="toggle-eye" onclick="togglePassword()">👁</span>
			</div>

			<button type="submit" onclick="alert('Employee added successfully')">
				Add Employee</button>

		</form>
	</div>

	<script>

/* ===== Eye Toggle ===== */
function togglePassword() {
    let pass = document.getElementById("password");
    pass.type = pass.type === "password" ? "text" : "password";
}

/* ===== Panda Close Eyes When Typing Password ===== */
let passwordField = document.getElementById("password");
let eye1 = document.getElementById("eye1");
let eye2 = document.getElementById("eye2");

passwordField.addEventListener("focus", function() {
    eye1.classList.add("closed");
    eye2.classList.add("closed");
});

passwordField.addEventListener("blur", function() {
    eye1.classList.remove("closed");
    eye2.classList.remove("closed");
});

</script>

</body>
</html>
