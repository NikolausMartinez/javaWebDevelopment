/*
 *  Nikolaus Martinez
 *  CS4010 hw2
 *  05/10/2017
 */
package hw2;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 *
 * @author ncmzt2
 */
public class dvdServlet extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String url = "/index.html";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) { 
            action = "join";  // default action
        }
        
        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.html";    // the "join" page
        } else if (action.equals("add")) {                
                // get parameters from the request
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String dvdTitle = request.getParameter("dvdTitle");
                String dvdPrice = request.getParameter("dvdPrice");
                
                Dvd dvd = new Dvd(name, dvdTitle, email, dvdPrice);
                
                request.setAttribute("dvd", dvd);
                url = "/thankYou.jsp";
        }
        // forward request and response objects to specified URL
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);      
    }
 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
