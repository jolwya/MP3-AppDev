<%-- 
    Document   : success
    Created on : Oct 25, 2026, 12:25:57 PM
    Author     : AISHA REYES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Character Counter</title>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>

        <jsp:include page="header.jsp" />

        <div class="card-container card-wide">
            <h2>Character Counter</h2>
           
            <form action="CharacterCountingServlet" method="POST">
                <p>
                    <label for="inputString">Enter String:</label><br>
                    <textarea id="inputString" name="inputString" rows="4" required><%=request.getAttribute("submittedString") != null ? request.getAttribute("submittedString") : "" %></textarea>
                </p>
                
                <p>
                    <input type="submit" value="Count Characters">
                </p>
            </form>
            
            <% if(request.getAttribute("hasResults") != null) { %>
            <hr style="margin: 20px 0; border: none; border-top: 1px solid #e0e0e0;">
            <h3 style="font-size: 1.15rem; color: #1a1f3c; margin-bottom: 10px;">Results</h3>
            <table>
                <tr>
                    <th>Metric</th>
                    <th>Count</th>
                </tr>
                <tr>
                    <td>String length</td>
                    <td><%= request.getAttribute("stringLength") %></td>
                </tr>
                <tr>
                    <td>Number of digits</td>
                    <td><%= request.getAttribute("digitCount") %></td>
                </tr>
                <tr>
                    <td>Number of vowels</td>
                    <td><%= request.getAttribute("vowelCount") %></td>
                </tr>
                <tr>
                    <td>Number of consonants</td>
                    <td><%= request.getAttribute("consonantCount") %></td>
                </tr>
                <tr>
                    <td>Number of symbols</td>
                    <td><%= request.getAttribute("symbolCount") %></td>
                </tr>
            </table>
            <% } %>
        </div>

        <jsp:include page="footer.jsp" />

    </body>
</html>
