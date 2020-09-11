package common;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class ListenerTest implements HttpSessionAttributeListener,
										ServletContextAttributeListener,
										ServletContextListener,
										HttpSessionListener,
										ServletRequestListener,
										ServletRequestAttributeListener {

    public ListenerTest() {

    }
    //세션이 생성될때
    public void sessionCreated(HttpSessionEvent se)  { 
    	System.out.println("세션 생성 : " + se.getSession().getId());
    }
    public void attributeRemoved(ServletContextAttributeEvent event)  { 

    }
    public void attributeAdded(ServletRequestAttributeEvent srae)  { 

    }

    public void attributeReplaced(HttpSessionBindingEvent event)  { 

    }
    public void contextInitialized(ServletContextEvent sce)  { 

    }

    public void attributeAdded(ServletContextAttributeEvent event)  { 
    }
    public void requestDestroyed(ServletRequestEvent sre)  { 

    }
    public void attributeRemoved(ServletRequestAttributeEvent srae)  { 

    }
    public void requestInitialized(ServletRequestEvent sre)  { 

    }


    public void sessionDestroyed(HttpSessionEvent se)  { 
         
    }

    public void contextDestroyed(ServletContextEvent sce)  { 
    }


    public void attributeReplaced(ServletRequestAttributeEvent srae)  { 
       
    }

    public void attributeAdded(HttpSessionBindingEvent event)  { 
         System.out.println("session attr 추가 : " + event.getName());
    }


    public void attributeRemoved(HttpSessionBindingEvent event)  { 
        
    }

    public void attributeReplaced(ServletContextAttributeEvent event)  { 
         
    }
	
}
