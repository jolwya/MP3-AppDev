package listeners;

import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();

        // startup date & time 
        Date appStartDate = new Date();
        context.setAttribute("appStartDate", appStartDate);

        // Header
        String headerTitle = "ICS2608 / 2CSC / AMPARO - LORENZO - REYES";
        context.setAttribute("headerTitle", headerTitle);
        context.setAttribute("appHeader", headerTitle);
        context.setAttribute("mpIdentifier", "MP3");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
