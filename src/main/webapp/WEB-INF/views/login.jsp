<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
</head>
<body>
	<h2>Login</h2>
	<form action="/login" method="post">
		<div>
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required />
		</div>
		<div>
			<label for="password">Password:</label> <input type="password"
				id="password" name="password" required />
		</div>
		<div>
			<button type="submit">Login</button>
		</div>
	</form>

	<p>
		Don't have an account? <a href="/register">Register here</a>
	</p>
</body>
</html>
