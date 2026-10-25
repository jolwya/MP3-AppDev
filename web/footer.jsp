<%@page contentType="text/html" pageEncoding="UTF-8"%>
<footer class="app-footer">
    <div class="footer-container">
        <span class="footer-badge">${applicationScope.mpIdentifier}</span>
        <span class="footer-divider">&bull;</span>
        <span class="footer-text"><strong>Application Startup Time:</strong> ${applicationScope.appStartDate}</span>
    </div>
</footer>
