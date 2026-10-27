package controllers;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharacterCountingServlet extends HttpServlet {

    private String digitsParam;
    private String vowelsParam;
    private String consonantsParam;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.digitsParam = config.getInitParameter("digits");
        this.vowelsParam = config.getInitParameter("vowels");
        this.consonantsParam = config.getInitParameter("consonants");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String inputString = request.getParameter("inputString");

        if (inputString == null) {
            inputString = "";
        }

        int stringLength = inputString.length();
        int digitCount = 0;
        int vowelCount = 0;
        int consonantCount = 0;
        int symbolCount = 0;

        for (int i = 0; i < inputString.length(); i++) {
            char ch = inputString.charAt(i);

            // Whitespace characters are excluded from digit, vowel, consonant, or symbol counts
            if (Character.isWhitespace(ch)) {
                continue;
            }

            if (digitsParam != null && digitsParam.indexOf(ch) != -1) {
                digitCount++;
            } else if (vowelsParam != null && vowelsParam.indexOf(ch) != -1) {
                vowelCount++;
            } else if (consonantsParam != null && consonantsParam.indexOf(ch) != -1) {
                consonantCount++;
            } else {
                symbolCount++;
            }
        }

        request.setAttribute("submittedString", inputString);
        request.setAttribute("stringLength", stringLength);
        request.setAttribute("digitCount", digitCount);
        request.setAttribute("vowelCount", vowelCount);
        request.setAttribute("consonantCount", consonantCount);
        request.setAttribute("symbolCount", symbolCount);
        request.setAttribute("hasResults", true);

        request.getRequestDispatcher("success.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("success.jsp").forward(request, response);
    }
}
