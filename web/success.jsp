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
        <title>Character Counting System</title>
        <link rel ="stylesheet" type="text/css" href="./sytles.css"/>
    </head>
    <body>
            <header>
                <h1>
                    <%=application.getAttribute("appHeader")!=null
                        ? application.getAttribute("appHeader")
                            : "ICS2608 / 2CSC / AMPARO - LORENZO - REYES" %>   
                </h1>
            </header>
            
            <hr>
            <h2>Character Counter</h2>
           
            <form action="CharacterCountingServlet" method="POST">
                <p>
                    <label for="inputString">Enter String:</label><br>
                    <textarea id="inputString" name="inputString" rows="4" cols="50" required><%=request.getAttribute("submittedString") != null ? request.getAttribute("submittedString") : "" %>
                    </textarea>
                </p>
                
                <p>
                    <input type="submit" value="Count Characters">
                </p>
            </form>
            
                    <% if(request.getAttribute("hasResults")!=null) { %>
                    <hr>
                    <h3>Results</h3>
                    <table border="1" cellpadding="6" cellspacing="0"/>                    }
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
        
        <hr>
        
        <footer>
            <p>
                Server Start Time: 
                <%= application.getAttribute("serverStartTime") != null 
                    ? application.getAttribute("serverStartTime") 
                    : "N/A" %>
            </p>
            <p>Identifier: MP3</p>
        </footer>
            
    </body>
</html>
