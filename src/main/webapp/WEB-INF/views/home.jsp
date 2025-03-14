<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather, Currency Exchange, and News Apps</title>
    <style>
        /* Overall Page Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            background: url('https://example.com/your-image.jpg') no-repeat center center fixed; /* Replace with your image */
            background-size: cover;
            color: #fff; /* White text to contrast against the dark overlay */
            position: relative;
        }

        /* Overlay for Image Background */
        body::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay */
            z-index: -1; /* Behind the content */
        }

        .content-wrapper {
            width: 100%;
            max-width: 800px;
            padding: 30px;
            text-align: center;
            box-sizing: border-box;
            position: relative;
        }

        /* App Container (Card Style) */
        .app-container {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            padding: 25px;
            margin: 20px 0;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .app-container:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.15);
        }

        /* App Heading */
        .app-container h2 {
            font-size: 2.2em;
            margin-bottom: 20px;
            color: #333;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-family: 'Roboto', sans-serif;
        }

        /* Form Group Styling */
        .form-group label {
            font-size: 1.2em;
            color: #444;
            display: block;
            margin-bottom: 10px;
        }

        .form-group input {
            width: 100%;
            padding: 15px;
            font-size: 1.1em;
            border: 2px solid #ccc;
            border-radius: 10px;
            box-sizing: border-box;
            margin-bottom: 25px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-group input:focus {
            border-color: #00bcd4;
            box-shadow: 0 0 8px rgba(0, 188, 212, 0.5);
            outline: none;
        }

        /* Button Styling */
        button, .app-button {
            width: 100%;
            padding: 15px;
            font-size: 1.2em;
            color: white;
            background-color: #00bcd4;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            font-weight: bold;
        }

        button:hover, .app-button:hover {
            background-color: #008c8c;
            transform: translateY(-2px);
        }

        /* Error Message */
        .error-message {
            color: #f44336;
            font-size: 1.1em;
            margin-top: 15px;
            font-weight: bold;
        }

        /* Separator between the apps */
        .separator {
            width: 100%;
            height: 2px;
            background-color: #e0e0e0;
            margin: 40px 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .app-container {
                max-width: 90%;
                padding: 20px;
            }

            .app-container h2 {
                font-size: 1.8em;
            }

            button, .app-button {
                padding: 12px;
                font-size: 1.1em;
            }
        }

    </style>
</head>
<body>

    <div class="content-wrapper">
        <!-- Weather App -->
        <div class="app-container">
            <h2>Weather App</h2>
            <form action="weather" method="get">
                <div class="form-group">
                    <label for="city">Enter City:</label>
                    <input type="text" id="city" name="city" required placeholder="e.g., Tokyo">
                </div>
                <button type="submit">Get Weather</button>
            </form>
            <p class="error-message">${error}</p>
        </div>

        <!-- Separator -->
        <div class="separator"></div>

        <!-- Currency Exchange App -->
        <div class="app-container">
            <h2>Currency Exchange Rate App</h2>
            <a class="app-button" href="${pageContext.request.contextPath}/currencyExchangeHome">
                Check Exchange Rate Here
          
