<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('<c:url value="/images/homeimage.jpg" />');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-size: 1.1em;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            padding: 12px;
            font-size: 1.1em;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            font-size: 0.9em;
            text-align: center;
            margin-top: 15px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                max-width: 90%;
                padding: 20px;
            }

            h1 {
                font-size: 2em;
            }

            input[type="text"] {
                font-size: 0.9em;
            }

            button {
                font-size: 1em;
                padding: 10px;
            }
        }

        @media (max-width: 480px) {
            h1 {
                font-size: 1.5em;
            }

            .form-group label {
                font-size: 1em;
            }

            input[type="text"] {
                font-size: 0.9em;
            }

            button {
                font-size: 0.9em;
                padding: 8px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Weather App</h1>
        <form action="weather" method="get">
            <div class="form-group">
                <label for="city">Enter City:</label>
                <input type="text" id="city" name="city" required placeholder="e.g., Tokyo">
            </div>
            <button type="submit">Get Weather</button>
        </form>
        <p class="error-message">${error}</p>
    </div>

</body>
</html>
