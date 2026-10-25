package listeners;

import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();

        // Current date and time representing startup time
        Date appStartDate = new Date();
        context.setAttribute("appStartDate", appStartDate);

        // Header format: SUBJECT / SECTION / LASTNAME1 - LASTNAME2
        String headerTitle = "ICS2608 / 2CSC / AMPARO - LORENZO - REYES";
        context.setAttribute("headerTitle", headerTitle);
        context.setAttribute("appHeader", headerTitle);

        // Machine Problem Identifier
        context.setAttribute("mpIdentifier", "MP3");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
