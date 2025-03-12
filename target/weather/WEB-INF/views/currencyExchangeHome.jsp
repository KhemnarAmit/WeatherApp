<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Currency Exchange</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            font-size: 24px;
            color: #333;
        }

        label {
            font-size: 16px;
            color: #666;
            margin-bottom: 8px;
            display: block;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group input {
            margin-bottom: 10px;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
            color: #888;
        }

        /* Style for Back Button */
        .button {
            display: inline-block;
            width: 100%;
            padding: 12px;
            text-align: center;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        .button:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>
    <div class="container">
        <h2>Currency Converter</h2>
        <form action="convert" method="GET">
            <div class="form-group">
                <label for="from">From (Currency Code):</label>
                <input type="text" name="from" id="from" required placeholder="e.g., USD, EUR, GBP">
            </div>

            <div class="form-group">
                <label for="to">To (Currency Code):</label>
                <input type="text" name="to" id="to" required placeholder="e.g., USD, EUR, GBP">
            </div>

            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="number" name="amount" id="amount" step="0.01" required>
            </div>

            <button type="submit">Convert</button>
            <!-- Back Button with styling -->
            <a href="${pageContext.request.contextPath}/stillWorking" class="button">Back</a>
        </form>
    </div>

    <div class="footer">
        <p>&copy; 2025 Currency Converter App</p>
    </div>
</body>
</html>
