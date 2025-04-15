<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            text-align: center;
            width: 350px;
        }
        h1 {
            margin-bottom: 30px;
            color: #333;
        }
        .button {
            display: block;
            margin: 15px auto;
            padding: 15px 30px;
            font-size: 16px;
            color: white;
            background: #4a90e2;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            transition: background 0.3s ease;
        }
        .button:hover {
            background: #357ab8;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome</h1>
    <a href="login" class="button">Login</a>
    <a href="registerPage" class="button">Register</a>
</div>
</body>
</html>

