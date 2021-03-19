package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import database_connection.DBUtils;
import database_connection.MyUtils;
import models.Song;

/**
 * Servlet implementation class AllSongServlet
 */

public class AllSongsAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllSongsAdminServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = MyUtils.getStoredConnection(request);	
		List<Song> allsongs = null;
		String errorString = null;
		
		try {
			allsongs = DBUtils.listSongs(conn);
			
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Store info in request attribute, before forward to views
        request.setAttribute("errorString", errorString);
        request.setAttribute("listAllSongs", allsongs);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/AllSongsAdmin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");

		//GO TO EDIT SONG PAGE
		if ("submit".equals(action)) {
			Connection conn = MyUtils.getStoredConnection(request);
			String title = (String) request.getParameter("title");
			String artist = (String) request.getParameter("artist");
			int year = Integer.parseInt(request.getParameter("year"));
			Float duration = Float.parseFloat(request.getParameter("duration"));
			String genre = (String) request.getParameter("genre");
			String album = (String) request.getParameter("album");
			boolean top = Boolean.parseBoolean(request.getParameter("top"));
			int ID_song = Integer.parseInt(request.getParameter("ID"));

			Song song = new Song();

			song.setArtist(artist);
			song.setTitle(title);
			song.setAlbum(album);
			song.setDuration(duration);
			song.setIs_top(top);
			song.setYear(year);
			song.setGenre(genre);
			song.setID(ID_song);
			//song.setId(id);

			request.setAttribute("song", song);

			this.getServletContext().getRequestDispatcher("/WEB-INF/views/editSong.jsp").forward(request, response);
		}
		else if ("confirm".equals(action)) {
			Connection conn = MyUtils.getStoredConnection(request);
			String title = (String) request.getParameter("title");
			String artist = (String) request.getParameter("artist");
			String genre = (String) request.getParameter("genre");
			String album = (String) request.getParameter("album");
			int year = Integer.parseInt(request.getParameter("year"));
			int id = Integer.parseInt(request.getParameter("id"));
			Float duration = Float.parseFloat(request.getParameter("duration"));
			boolean top = Boolean.parseBoolean(request.getParameter("top"));

			try {
				DBUtils.updateSong(conn, id, title, artist, year, genre, duration, album, top);
				
			} catch (SQLException e) {

				e.printStackTrace();
			}

			response.sendRedirect("AllSongsAdmin");
        }
		 else if ("cancel".equals(action)) {
		// go back
		response.sendRedirect("AllSongsAdmin");
		}
		 else if ("delete".equals(action)) {
			 
				Connection conn = MyUtils.getStoredConnection(request);
				int id_song = Integer.parseInt(request.getParameter("id"));

				try {
					DBUtils.deleteSong(conn, id_song);
					System.out.println("");
				} catch (SQLException e) {

					e.printStackTrace();
				}

				response.sendRedirect("AllSongsAdmin");
				
			} 
		
		 else if ("add".equals(action)) {
			 
			 response.sendRedirect("addSong");
				
			} 
		 else {
			doGet(request, response);
		 }
		
	}
	
}
