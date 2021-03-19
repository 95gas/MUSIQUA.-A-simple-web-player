package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database_connection.DBUtils;
import database_connection.MyUtils;
import models.Album;

/**
 * Servlet implementation class AlbumServlet
 */

public class AlbumAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AlbumAdminServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn = MyUtils.getStoredConnection(request);
		List<Album> albumList = null;
		String errorString = null;

		try {
			albumList = DBUtils.listAlbums(conn);

		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Store info in request attribute, before forward to views
		request.setAttribute("errorString", errorString);
		request.setAttribute("list_album", albumList);

		// response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/AlbumAdmin.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		//EDIT ALBUM
		if ("confirm".equals(action)) {

			Connection conn = MyUtils.getStoredConnection(request);
			String title = (String) request.getParameter("title");
			String artist = (String) request.getParameter("artist");
			int year = Integer.parseInt(request.getParameter("year"));
			int id = Integer.parseInt(request.getParameter("id"));

			try {
				DBUtils.updateAlbum(conn, id, title, artist, year);
				System.out.println("");
			} catch (SQLException e) {

				e.printStackTrace();
			}

			response.sendRedirect("AlbumAdmin");

		//CANCEL OPERATION
		} else if ("cancel".equals(action)) {
			// go back
			response.sendRedirect("AlbumAdmin");
		
		//DELETE ALBUM
		} else if ("delete".equals(action)) {
			Connection conn = MyUtils.getStoredConnection(request);
			int id = Integer.parseInt(request.getParameter("id"));

			try {
				DBUtils.deleteAlbum(conn, id);

			} catch (SQLException e) {

				e.printStackTrace();
			}

			response.sendRedirect("AlbumAdmin");
			
		} 
		
		//RETURN ID ALBUM
		else {
			Connection conn = MyUtils.getStoredConnection(request);
			String title = (String) request.getParameter("album_name");
			String artist = (String) request.getParameter("album_artist");
			int year = Integer.parseInt(request.getParameter("album_year"));
			int id = 0;

			try {
				id = DBUtils.Return_ID_album(conn, title, artist, year);
			} catch (SQLException e) {

				e.printStackTrace();
			}

			Album album = new Album();

			album.setArtist(artist);
			album.setName(title);
			album.setYear(year);
			album.setId(id);

			request.setAttribute("album", album);

			this.getServletContext().getRequestDispatcher("/WEB-INF/views/editAlbum.jsp").forward(request, response);
		}
	}

}
