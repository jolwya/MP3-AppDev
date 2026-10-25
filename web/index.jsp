<%-- 
    Document   : index
    Created on : 10 21, 26, 12:01:50 PM
    Author     : JIllianne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <!--header-->
        
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <p>Username: <input type="text" placeholder="admin" name="username"></p>
            <p>Password: <input type="password" placeholder="password123" name="password"></p>
            <p><input type="submit" name="Login"></p>
        </form>
        
        <!--footer-->
    </body>
</html>
