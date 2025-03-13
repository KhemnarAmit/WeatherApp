<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather, Currency Exchange, and News Apps</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            box-sizing: border-box; /* Fix for overflow issues */
        }

        .app-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 100%;
            max-width: 400px;
            margin: 20px 0;
            text-align: center;
        }

        .app-container h2 {
            font-size: 1.8em;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group label {
            font-size: 1.1em;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 20px;
        }

        button, .app-button {
            width: 100%;
            padding: 12px;
            font-size: 1.1em;
            color: white;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover, .app-button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            font-size: 0.9em;
            text-align: center;
            margin-top: 15px;
        }

        .separator {
            width: 100%;
            height: 1px;
            background-color: #e0e0e0;
            margin: 30px 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .app-container {
                max-width: 90%;
                padding: 15px;
            }

            .app-container h2 {
                font-size: 1.5em;
            }

            button, .app-button {
                padding: 10px;
            }
        }

        /* Make sure the app containers don't overflow */
        .content-wrapper {
            width: 100%;
            max-width: 600px;
            padding: 10px;
            box-sizing: border-box;
            text-align: center;
        }

    </style>
</head>
<body>

    <!-- Content Wrapper to ensure proper alignment -->
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
            </a>
        </div>

        <!-- Separator -->
        <div class="separator"></div>

        <!-- News App -->
        <div class="app-container">
            <h2>News App</h2>
            <form action="news" method="get">
                <button type="submit">Check Todays One Top News</button>
            </form>
        </div>

    </div>

</body>
</html>
