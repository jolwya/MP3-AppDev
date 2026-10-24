/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        //inputted
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        //verify if user and pass are correct
        String correctUser=getInitParameter("username");
        String correctPassword=getInitParameter("password");
        
        //checks if field is empty + errors
        String error = null;
        if (username.equals("") && password.equals("")){
            request.setAttribute("errorMessage", "Please enter both username and password.");
            RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
            rd.forward(request,response);
        }
        //no username entered
        else if (username.equals("")){
            request.setAttribute("errorMessage", "Please enter username.");
            RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
            rd.forward(request,response);
        }
        //no password entered
        else if (password.equals("")){
            request.setAttribute("errorMessage", "Please enter password.");
            RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
            rd.forward(request,response);
        }
        //incorrect username
        else if (!username.equals(correctUser)){
            request.setAttribute("errorMessage", "Please enter correct username.");
            RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
            rd.forward(request,response);
        }
        //incorrect password
        else if (!password.equals(correctPassword)){
            request.setAttribute("errorMessage", "Please enter correct password.");
            RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
            rd.forward(request,response);
        }
        //redirects user to success.jsp, if username and password are correct
        else {
            RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
            rd.forward(request,response);
        }
    }
}
