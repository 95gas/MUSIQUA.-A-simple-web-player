package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database_connection.DBUtils;
import database_connection.MyUtils;

/**
 * Servlet implementation class AllSongServlet
 */

public class addSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addSongServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/addSong.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		
		if ("confirm".equals(action)) {
			Connection conn = MyUtils.getStoredConnection(request);
			String title = (String) request.getParameter("title");
			String artist = (String) request.getParameter("artist");
			String genre = (String) request.getParameter("genre");
			String album = (String) request.getParameter("album");
			int year = Integer.parseInt(request.getParameter("year"));
			Float duration = Float.parseFloat(request.getParameter("duration"));
			boolean top = Boolean.parseBoolean(request.getParameter("top"));

			try {
				DBUtils.insertSong(conn, title, artist, year, genre, duration, album, top);

			} catch (SQLException e) {

				e.printStackTrace();
			}

			response.sendRedirect("AllSongsAdmin");
			
		} else if ("cancel".equals(action)) {
			// go back
			response.sendRedirect("AllSongsAdmin");
		}
	}
}