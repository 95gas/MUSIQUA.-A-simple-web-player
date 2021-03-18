package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database_connection.DBUtils;
import database_connection.MyUtils;
import models.Playlist;
import models.User;
import models.Song;

/**
 * Servlet implementation class AllSongServlet
 */
@WebServlet("/AllSongServlet")
public class AllSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllSongServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = MyUtils.getStoredConnection(request);	
		List<Song> allsongs = null;
		String errorString = null;
		List<Playlist> listPlaylist = null;

		//HttpSession session = request.getSession();
		//User man = MyUtils.getLoginedUser(session);
		
		try {
			//listPlaylist = DBUtils.findPlaylists(conn, man.getUsername());
			listPlaylist = DBUtils.test(conn);
			allsongs = DBUtils.listSongs(conn);
			
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Store info in request attribute, before forward to views
        request.setAttribute("errorString", errorString);
        request.setAttribute("listAllSongs", allsongs);
        request.setAttribute("list_play", listPlaylist);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/AllSongs.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = MyUtils.getStoredConnection(request);
		
		String title = (String) request.getParameter("title");
		String artist = (String) request.getParameter("artist");
		String playlist = (String) request.getParameter("title_playlist");
		String errorString = null;
		
		HttpSession session = request.getSession();
		User man = MyUtils.getLoginedUser(session);
		
		int id_song=0;
		int id_playlist=0;
		 
        try {
        	
            id_song = DBUtils.find_IDSong(conn, title, artist);
            id_playlist = DBUtils.find_IDSong(conn, playlist, man.getUsername());
            DBUtils.AddToPlaylist(conn, id_song, id_playlist);
            
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }

        // If error, forward to Edit page.
        if (errorString != null) {
        	System.out.println("Error during adding new song to a playlist!");
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/AllSongs.jsp");
            dispatcher.forward(request, response);
        }

        else {
        	System.out.println("Song added to the playlist!");
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/AllSongs.jsp");
            dispatcher.forward(request, response);
        }
		
	}

}
