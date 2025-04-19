This application implements a simple Login and Registration system using Spring Boot, Hibernate ORM, and PostgreSQL. It is designed for users who want to quickly run a working login/register web app.

Project in work(For NFactorial) -> https://youtu.be/6-qsVYF9Dlw

1) Before starting, make sure you have the following installed:
– Java (version 8 or higher)
– PostgreSQL
– An IDE like IntelliJ IDEA or Eclipse (you should know how to open and run a Maven project)

2) Install PostgreSQL and pgAdmin (a visual tool to manage PostgreSQL):
– For Windows: https://www.youtube.com/watch?v=GpqJzWCcQXY&t=336s
– For Mac OS: https://www.youtube.com/watch?v=fy-42clnbmc

Open pgAdmin and create a new database.

3) In your IDE, open this project and go to the file:
src/main/resources/hibernate.cfg.xml

In hibernate.cfg.xml, find the following lines and replace the placeholders with your actual database details:
– <property name="hibernate.connection.url">jdbc:postgresql://localhost:5432/DB NAME/property>
– <property name="hibernate.connection.username">YOUR_USERNAME</property>
– <property name="hibernate.connection.password">YOUR_PASSWORD</property>

4) Then open the file:
src/main/resources/application.properties

And make sure that you write all essential infromations mentioned there;

5) Now, go to the pom.xml file located in the root of the project.

Open the Maven panel in your IDE and click the Reload/Refresh button to download all necessary dependencies. This will install Spring Boot, Hibernate, and PostgreSQL libraries.

6) After everything is downloaded, go to the file:
src/main/java/org/web/SpringBootWebProjApplication.java

Right-click the SpringBootWebProjApplication class and select Run (or run it however your IDE allows).

If everything is correct, the application will start, and in the console you will see messages showing the server is running.

7) Open your browser and go to:
http://localhost:8080
(Or another port, if you changed it inside a application.properties file server.port.)

8) You should now see the login or registration page. Try registering a new user to test the app.

If the database is connected properly, Hibernate will automatically create the necessary tables in your PostgreSQL database. You can check this in pgAdmin by refreshing your login_db.

9) If you get an error like "Connection refused" or "Authentication failed", double-check your database name, username, and password in hibernate.cfg.xml.

10) If the server won’t start because the port is already used, change the port in application.properties to another number (e.g., 8081).

That’s it! You’ve now successfully configured and launched a Spring Boot Login/Register web app connected to PostgreSQL.
