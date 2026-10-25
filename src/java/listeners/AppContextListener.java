package listeners;

import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class AppContextListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sc) {
        ServletContext context = sc.getServletContext();

        context.setAttribute("appStartDate", new Date());
        context.setAttribute("headerTitle", "ICS2608 | 2CSC | Amparo - Lorenzo - Reyes");
        context.setAttribute("mpIdentifier", "MP3");
    }
    public void contextDestroyed(ServletContextEvent sc) {}
}