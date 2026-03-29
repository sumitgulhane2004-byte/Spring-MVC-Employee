<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>

<style>
	body {
		margin: 0;
		padding: 0;
		font-family: Arial, sans-serif;
		background: linear-gradient(to right, #4facfe, #00f2fe);
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.container {
		text-align: center;
		background-color: white;
		padding: 40px;
		border-radius: 12px;
		box-shadow: 0 8px 20px rgba(0,0,0,0.2);
	}

	h1 {
		color: #333;
		margin-bottom: 20px;
	}

	a {
		text-decoration: none;
		background-color: #4facfe;
		color: white;
		padding: 12px 20px;
		border-radius: 6px;
		font-size: 16px;
		transition: 0.3s;
	}

	a:hover {
		background-color: #007bff;
	}
</style>

</head>
<body>

<div class="container">
	<h1>Welcome to index JSP page....</h1>
	<a href="home">Go to Homepage</a>
</div>

</body>
</html>