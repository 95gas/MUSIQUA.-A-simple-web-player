package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.tools.sjavac.server.RequestHandler;

import database_connection.ConnexionForm;
import models.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		 	User user=null;
	        String username = req.getParameter("username");
	        String email = req.getParameter("email");
	        String password = req.getParameter("password");
	        if(username!=null && password!=null) {
	            user = RequestHandler.getRequestHandler().authenticate(username, password);
	        }
	        else if(email!=null && password!=null) {
	            user = RequestHandler.getRequestHandler().authenticate(email, password);
	        	
	        }
	        
	        //If he is authenticated, we create a cookie to follow his connexion
	        
	        if (user!=null) {
	            req.setAttribute("gameList", RequestHandler.getRequestHandler().getEnabledGames());
	            setCookie(resp, COOKIE_PLAYER, player.getId().toString(), COOKIE_MAX_AGE);
	            req.setAttribute("player",player);
	            this.getServletContext().getRequestDispatcher("/WEB-INF/gamesList.jsp").forward(req, resp);
	        }
	        /*
	        Else
	         */
	        else
	        {
	            req.setAttribute("error","Impossible de t'identifier, vérifie ton pseudo et ton mot de passe.");
	            if (pseudo!=null) {
	                req.setAttribute("pseudo", pseudo);
	            }
	            this.getServletContext().getRequestDispatcher("/WEB-INF/authentification.jsp").forward(req,resp);
	        }
		
	}

}
