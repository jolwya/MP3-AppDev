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
        
        <div style="padding:30px;">
            <h2>Login Failed</h2>
            <p><%= request.getAttribute("errorMessage") %></p>
            <p><a href="index.jsp">Back to Login</a></p>
        </div>
        
        <jsp:include page="footer.jsp" />
    </body>
</html>
