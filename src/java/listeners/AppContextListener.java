package listeners;

import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * ServletContextListener that initializes startup date and time,
 * as well as common header and footer information for the web application.
 */
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();

        // 1. Instantiate a Date object representing startup date and time
        Date startupDate = new Date();
        context.setAttribute("serverDate", startupDate);

        // 2. Configure Header Information
        String headerText = context.getInitParameter("headerText");
        if (headerText == null || headerText.trim().isEmpty()) {
            headerText = "SUBJECT / SECTION / LASTNAME1 - LASTNAME2";
        }
        context.setAttribute("headerText", headerText);

        // 3. Configure Footer Information
        context.setAttribute("mpIdentifier", "MP3");

        System.out.println("[AppContextListener] Application initialized at: " + startupDate);
        System.out.println("[AppContextListener] Header: " + headerText);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("[AppContextListener] Application destroyed.");
    }
}
