package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Submitted credentials
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Initialization parameters configured in web.xml
        String configuredUser = getServletConfig().getInitParameter("username");
        String configuredPassword = getServletConfig().getInitParameter("password");

        boolean isUserEmpty = (username == null || username.trim().isEmpty());
        boolean isPassEmpty = (password == null || password.trim().isEmpty());

        String errorMessage = null;

        // Validation logic
        if (isUserEmpty && isPassEmpty) {
            errorMessage = "Both username and password fields are required.";
        } else if (isUserEmpty) {
            errorMessage = "Username field cannot be empty.";
        } else if (isPassEmpty) {
            errorMessage = "Password field cannot be empty.";
        } else if (!username.equals(configuredUser)) {
            errorMessage = "The username entered is incorrect.";
        } else if (!password.equals(configuredPassword)) {
            errorMessage = "The password entered is incorrect.";
        }

        if (errorMessage != null) {
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }
}
