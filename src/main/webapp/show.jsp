<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* ===== Background Animation ===== */
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(-45deg, #1e3c72, #2a5298, #0f2027, #203a43);
	background-size: 400% 400%;
	animation: gradientBG 10s ease infinite;
	color: white;
	text-align: center;
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

/* ===== Heading Animation ===== */
h1 {
	margin-top: 40px;
	font-size: 32px;
	letter-spacing: 2px;
	animation: fadeInDown 1s ease-in-out;
}

@
keyframes fadeInDown {from { opacity:0;
	transform: translateY(-30px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* ===== Table Styling ===== */
table {
	margin: 40px auto;
	border-collapse: collapse;
	width: 70%;
	background: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(10px);
	border-radius: 10px;
	overflow: hidden;
	animation: fadeInUp 1s ease-in-out;
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
}

@
keyframes fadeInUp {from { opacity:0;
	transform: translateY(30px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
th, td {
	padding: 15px;
	text-align: center;
}

th {
	background: rgba(0, 0, 0, 0.5);
	text-transform: uppercase;
	letter-spacing: 1px;
}

tr {
	transition: all 0.3s ease;
}

tr:hover {
	background-color: rgba(255, 255, 255, 0.2);
	transform: scale(1.02);
}

/* ===== Row Animation ===== */
tbody tr {
	animation: rowFade 0.6s ease forwards;
}

@
keyframes rowFade {from { opacity:0;
	transform: translateX(-20px);
}

to {
	opacity: 1;
	transform: translateX(0);
}
}
</style>
</head>
<body>
<h1>Welcome to Show JSP page ...</h1>

	<table>

		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>ROLE</th>
			<th>SALARY</th>
			<th>Actions</th>
		</tr>

		<c:forEach var="e" items="${employees}">
			<tr>
				<td>${e.id}</td>
				<td>${e.name}</td>
				<td>${e.role}</td>
				<td>${e.salary}</td>


				<td>
					<button>Edit</button>
					<button>Delete</button>

				</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>