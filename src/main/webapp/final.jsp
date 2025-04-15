<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Project Summary</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f4f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            max-width: 700px;
            text-align: center;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
        }

        p {
            font-size: 17px;
            color: #444;
            line-height: 1.6;
        }

        .highlight {
            color: #4a90e2;
            font-weight: bold;
        }

        .back-link {
            display: inline-block;
            margin-top: 25px;
            color: #4a90e2;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        .back-link:hover {
            text-decoration: underline;
            color: #357ab8;
        }
    </style>
</head>
<body>
<div class="card">
    <h1>Congrats, you logged in, About the Project</h1>
    <p>
        This web page for realizing a logic of Login/Register was <span class="highlight">entirely developed by Ersultan</span>,
        who independently implemented the full logic of interaction with databases using modern enterprise-level technologies.
    </p>
    <p>
        Throughout the project, Ersultan applied his deep understanding of <span class="highlight">Java back-end development</span>,
        utilizing tools like <span class="highlight">Hibernate</span> for ORM, <span class="highlight">PostgreSQL</span> for data persistence,
        and <span class="highlight">Spring Framework</span> to build a clean, modular architecture.
    </p>
    <p>
        Taking things further, he embraced the power of <span class="highlight">Spring Boot</span> to reduce boilerplate,
        structure the project efficiently, and streamline the deployment process.
        Even complex features such as user authentication, session handling, and dynamic routing were crafted
        without relying on external templates — showcasing true full-stack thinking.
    </p>
    <p>
        Every component, from the database schema to the JSP front-end design, was structured thoughtfully,
        with a focus on clarity, maintainability, and performance.
    </p>
    <p>
        This project is a strong testament to Ersultan’s ability to not only code, but to design,
        optimize, and execute a complete Java web application from scratch — proving he's well-versed in both the theory
        and practice of modern software development.
    </p>

    <a class="back-link" href="/">← Back to Main Page</a>
</div>
</body>
</html>

