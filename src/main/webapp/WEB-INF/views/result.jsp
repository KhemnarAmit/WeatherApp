<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Weather Result</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #e0f7fa;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	color: #333;
}

.container {
	background-color: #ffffff;
	border-radius: 10px;
	padding: 40px;
	box-shadow: 0 12px 20px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 600px;
	text-align: center;
}

h1 {
	font-size: 2.5em;
	color: #00796b;
	margin-bottom: 20px;
	text-transform: capitalize;
}

.weather-info {
	font-size: 1.4em;
	margin: 10px 0;
	color: #00796b;
}

.temp {
	font-size: 1.8em;
	font-weight: 600;
	color: #d32f2f;
}

.temp-details {
	font-size: 1.2em;
	color: #0288d1;
}

.btn {
	display: inline-block;
	margin-top: 25px;
	font-size: 1.1em;
	color: white;
	background-color: #00796b;
	text-decoration: none;
	padding: 12px 20px;
	border-radius: 25px;
	border: none;
	transition: background-color 0.3s ease;
	cursor: pointer;
}

.btn:hover {
	background-color: #004d40;
}

.temp-info {
	margin-top: 30px;
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 15px;
}

.temp-info p {
	font-size: 1.1em;
	color: #555;
}
</style>
</head>
<body>

	<div class="container">
		<h1>Weather in ${weather.name}</h1>

		<div class="weather-info">
			<p class="temp">Temperature: ${weather.main.temp}°C</p>
		</div>

		<div class="temp-info">
			<p class="temp-details">Feels Like: ${weather.main.feels_like}°C</p>
			<p class="temp-details">Min Temp: ${weather.main.temp_min}°C</p>
			<p class="temp-details">Max Temp: ${weather.main.temp_max}°C</p>
		</div>

		<a href="/weather" class="btn">Search Again</a>
	</div>
	<form action="visitgoogle" method="get">
		<button type="submit">visit google and cross verfiry there</button>
	</form>
</body>
</html>
