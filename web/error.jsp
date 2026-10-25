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
        
        <div class="page-content" style="padding:40px 30px;">
            <h2 style="font-size: 1.5rem; margin-bottom: 15px;">Login Failed</h2>
            <p style="font-size: 1.05rem; color: #c0392b; margin-bottom: 20px;"><%= request.getAttribute("errorMessage") %></p>
            <p><a href="index.jsp" style="font-size: 1.05rem; text-decoration: none; color: #2c3e50; font-weight: bold;">&larr; Back to Login</a></p>
        </div>
        
        <jsp:include page="footer.jsp" />
    </body>
</html>
