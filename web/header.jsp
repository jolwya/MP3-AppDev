<%-- 
    Document   : header
    Created on : 10 25, 26, 1:45:09 PM
    Author     : caitlinjuliaamparo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
<style>
    * { font-family: 'Montserrat', sans-serif; margin: 0; padding: 0; }
    .bar {
        background: linear-gradient(to right, #1a1f3c, #2b3359, #3d4a7a);
        color: #f5eedc;
        padding: 8px 20px;
        text-align: center;
    }
    .bar h2 { font-size: 13px; font-weight: 700; letter-spacing: 1px; }
    .bar p  { font-size: 12px; font-weight: 700; letter-spacing: 1px; }
</style>
<div class="bar">
    <h2>${applicationScope.headerTitle}</h2>
</div>
    