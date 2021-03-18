package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database_connection.DBUtils;
import database_connection.MyUtils;
import models.Playlist;
import models.User;

/**
 * Servlet implementation class MyPlaylistServlet
 */
public class MyPlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPlaylistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = MyUtils.getStoredConnection(request);	
		List<Playlist> listPlaylist = null;
		String errorString = null;
		HttpSession session = request.getSession();
		User man = MyUtils.getLoginedUser(session);

		try {
			listPlaylist = DBUtils.findPlaylists(conn, man.getUsername());
			
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Store info in request attribute, before forward to views
        request.setAttribute("errorString", errorString);
        request.setAttribute("list_play", listPlaylist);
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/views/MyPlaylist.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
