<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
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
        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
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
    <h1>Register</h1>
    <form action="registerLogic" method="post">
        <input id="email" type="email" name="email" placeholder="Enter email" required />
        <input id="name" type="text" name="name" placeholder="Choose username" required />
        <input id="pass" type = "password" name="pass" placeholder="Choose password" required />
        <button type="submit" class="submit-button">Register</button>
    </form>
    <a href="login" class="switch-link">Already have an account? Login</a>
</div>
</body>
</html>
