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
    </head>
    <body>
        <!--header-->
        
        <h2>Login Failed</h2>
        <p><request.getAttribute("errorMessage")></p>
        <p><a href="index.jsp"Back to Login></p>
        
        <!--footer-->
    </body>
</html>
