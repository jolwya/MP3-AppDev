<%-- 
    Document   : error
    Created on : 10 24, 26, 9:46:42 AM
    Author     : JIllianne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Error</title>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>

        <jsp:include page="header.jsp" />

        <div class="card-container">
            <h2>Login Failed</h2>
            <div class="error-msg">
                <%= request.getAttribute("errorMessage") %>
            </div>
            <a href="index.jsp" class="btn-action">Back to Login</a>
        </div>

        <jsp:include page="footer.jsp" />

    </body>
</html>
