<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Error</title>
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
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 5px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 5px;
            margin-bottom: 15px;
        }
        .submit-button {
            background-color: #4a90e2;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s ease;
        }
        .submit-button:hover {
            background-color: #357ab8;
        }
        .switch-link {
            display: block;
            margin-top: 20px;
            color: #4a90e2;
            text-decoration: none;
        }
        .switch-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Login</h1>
    <form action="loginLogic" method="post">
        <input type="text" name="username" placeholder="Enter your username" required />
        <div class="error-message">No username as ${username} exist!</div>
        <input type="password" name="password" placeholder="Enter your password" required />
        <button type="submit" class="submit-button">Login</button>
    </form>
    <a href="registerPage" class="switch-link">Don't have an account? Register</a>
</div>
</body>
</html>