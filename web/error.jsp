<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Error - MP3</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <main class="main-content">
            <div class="card error-card">
                <div class="error-icon">&#10005;</div>
                <div class="card-header">
                    <h2>Login Failed</h2>
                </div>
                <div class="error-box">
                    <p class="error-message">
                        <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "An unexpected error occurred during login." %>
                    </p>
                </div>
                <div class="form-actions">
                    <a href="index.jsp" class="btn btn-primary">Back to Login</a>
                </div>
            </div>
        </main>

        <jsp:include page="footer.jsp" />
    </body>
</html>
