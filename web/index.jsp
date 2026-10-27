<<<<<<< HEAD
x   <%-- 
=======
<%-- 
>>>>>>> bdf1c830c42f72b2ed815c3fe820ab887e5519cb
    Document   : index
    Created on : 10 21, 26, 12:01:50 PM
    Author     : JIllianne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>

        <jsp:include page="header.jsp" />

        <div class="card-container">
            <h2>User Login</h2>
            <form action="LoginServlet" method="post">
<<<<<<< HEAD
                <p>Username: <br><input type="text" placeholder="Enter your username" name="username"></p>
                <p>Password: <br><input type="password" placeholder="Enter your password" name="password"></p>
=======
                <p>Username: <br><input type="text" placeholder="admin" name="username"></p>
                <p>Password: <br><input type="password" placeholder="password123" name="password"></p>
>>>>>>> bdf1c830c42f72b2ed815c3fe820ab887e5519cb
                <p><input type="submit" value="Login"></p>
            </form>
        </div>

        <jsp:include page="footer.jsp" />

    </body>
</html>
