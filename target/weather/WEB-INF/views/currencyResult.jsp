<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exchange Rate Result</title>
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
            max-width: 600px;
            text-align: center;
        }

        h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        .error {
            color: #ff4d4d;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .result {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        .rate {
            font-size: 18px;
            color: #555;
            margin-bottom: 30px;
        }

        .button {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            font-size: 16px;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #45a049;
        }

        .footer {
            margin-top: 40px;
            font-size: 14px;
            color: #888;
        }

    </style>
</head>
<body>
    <div class="container">
        <h2>Exchange Rate Result</h2>

        <c:choose>
            <c:when test="${not empty error}">
                <p class="error">${error}</p>
            </c:when>
            <c:otherwise>
                <p class="result">${amount} ${from} = ${convertedAmount} ${to}</p>
                <p class="rate"><strong>Exchange Rate:</strong> 1 ${from} = ${rate} ${to}</p>
            </c:otherwise>
        </c:choose>

        <a href="${pageContext.request.contextPath}/currencyExchangeHome" class="button">Back</a>

    </div>

    <div class="footer">
        <p>&copy; 2025 Currency Converter App</p>
    </div>
</body>
</html>
