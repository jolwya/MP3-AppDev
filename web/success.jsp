<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Character Counting System - MP3</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <main class="main-content">
            <div class="card">
                <div class="card-header">
                    <h2>Character Counter</h2>
                    <p class="subtitle">Enter any text string below to analyze its character composition</p>
                </div>

                <form action="CharacterCountingServlet" method="POST">
                    <div class="form-group">
                        <label for="inputString">Enter String:</label>
                        <textarea id="inputString" name="inputString" rows="4" placeholder="Type or paste your text here..." required><% if (request.getAttribute("submittedString") != null) { %><%= request.getAttribute("submittedString") %><% } %></textarea>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Count Characters</button>
                    </div>
                </form>

                <% if (request.getAttribute("hasResults") != null) { %>
                <div class="results-section">
                    <div class="results-header">
                        <h3>Analysis Results</h3>
                    </div>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Metric</th>
                                <th>Count</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>String length</td>
                                <td><span class="count-badge">${stringLength}</span></td>
                            </tr>
                            <tr>
                                <td>Number of digits</td>
                                <td><span class="count-badge">${digitCount}</span></td>
                            </tr>
                            <tr>
                                <td>Number of vowels</td>
                                <td><span class="count-badge">${vowelCount}</span></td>
                            </tr>
                            <tr>
                                <td>Number of consonants</td>
                                <td><span class="count-badge">${consonantCount}</span></td>
                            </tr>
                            <tr>
                                <td>Number of symbols</td>
                                <td><span class="count-badge">${symbolCount}</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <% } %>
            </div>
        </main>

        <jsp:include page="footer.jsp" />
    </body>
</html>
