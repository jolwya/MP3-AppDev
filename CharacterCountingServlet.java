/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author AISHA REYES
 */
public class CharacterCountingServlet extends HttpServlet {
    
    private String digitsParam;
    private String vowelsParam;
    private String consonantsParam;
    
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        
        this.digitsParam=config.getInitParameter("digits");
        this.vowelsParam=config.getInitParameter("vowels");
        this.consonantsParam=config.getInitParameter("consonants");
        
        if(this.digitsParam==null) this.digitsParam = "0123456789";
        if(this.vowelsParam==null) this.vowelsParam = "aeiouAEIOU";
        if(this.consonantsParam==null) this.consonantsParam = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";
        
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String inputString=request.getParameter("inputString");
        
        int stringLength=0;
        int digitCount=0;
        int vowelCount=0;
        int consonantCount=0;
        int symbolCount=0;
        
        if (inputString!=null)
            stringLength=inputString.length();
        
        for(int i=0; i<inputString.length(); i++) {
            char ch=inputString.charAt(i);
            
            if(Character.isWhitespace(ch)) {
                continue;
            }
            if (digitsParam.indexOf(ch)!=-1){
                digitCount++;
            } else if (vowelsParam.indexOf(ch)!=-1){
                vowelCount++;
            } else if (consonantsParam.indexOf(ch)!=-1){
                consonantCount++;
            } else {
                symbolCount++;
            }
        }

    request.setAttribute("submittedString", inputString);
    request.setAttribute("stringLength", stringLength);
    request.setAttribute("digitCount", digitCount);
    request.setAttribute("vowelCount", vowelCount);
    request.setAttribute("constantCount", consonantCount);
    request.setAttribute("symbolCount", symbolCount);
    request.setAttribute("hasResults", true);
    
    request.getRequestDispatcher("success.jsp").forward(request, response);
    
}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("success.jsp").forward(request, response);
    }
}
