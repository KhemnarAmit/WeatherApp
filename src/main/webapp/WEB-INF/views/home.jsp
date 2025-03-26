<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Weather App</title>
</head>
<body>
    <h2>Welcome to the Weather App</h2>
    <p>You are logged in as <s:authentication property="name" /></p>
    
    <h3>Weather Details</h3>
    <!-- Example weather data -->
    <p>Location: New York</p>
    <p>Temperature: 22°C</p>
    <p>Condition: Clear Sky</p>

    <a href="/logout">Logout</a>
</body>
</html>
