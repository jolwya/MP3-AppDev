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
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>

        <jsp:include page="header.jsp" />

        <div class="page-content login-container">
            <h2>Login</h2>
            <form action="LoginServlet" method="post">
                <p>Username: <br><input type="text" placeholder="admin" name="username"></p>
                <p>Password: <br><input type="password" placeholder="password123" name="password"></p>
                <p><input type="submit" value="Login"></p>
            </form>
        </div>

        <jsp:include page="footer.jsp" />

    </body>
</html>
