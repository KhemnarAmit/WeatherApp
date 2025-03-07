<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 30px;
            width: 100%;
            max-width: 700px;
            text-align: center;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2.8em;
            color: #009688;
            margin-bottom: 20px;
            text-transform: capitalize;
        }

        .weather-info {
            font-size: 1.5em;
            color: #00796b;
            margin-bottom: 20px;
        }

        .temp {
            font-size: 2.5em;
            font-weight: 600;
            color: #d32f2f;
        }

        .details {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-top: 20px;
        }

        .details p {
            font-size: 1.2em;
            color: #0288d1;
        }

        .btn {
            margin-top: 30px;
            padding: 12px 25px;
            font-size: 1.1em;
            background-color: #009688;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Weather in ${weather.name}</h1>

        <div class="weather-info">
            <p class="temp">${weather.main.temp}°C</p>
            <p>${weather.weather[0].description}</p>
        </div>

        <div class="details">
            <p><strong>Feels Like:</strong> ${weather.main.feels_like}°C</p>
            <p><strong>Min Temp:</strong> ${weather.main.temp_min}°C</p>
            <p><strong>Max Temp:</strong> ${weather.main.temp_max}°C</p>
            <p><strong>Humidity:</strong> ${weather.main.humidity}%</p>
            <p><strong>Pressure:</strong> ${weather.main.pressure} hPa</p>
            <p><strong>Wind Speed:</strong> ${weather.wind.speed} m/s</p>
            <p><strong>Cloudiness:</strong> ${weather.clouds.all}%</p>
        </div>

        <a href="/weather" class="btn">Search Again</a>
    </div>
</body>
</html>
