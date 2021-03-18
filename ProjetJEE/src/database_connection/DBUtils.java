package database_connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import models.Album;
import models.Playlist;
import models.Song;
import models.User;

public class DBUtils {

	// LIST TOP SONGS
	public static List<Song> top_songs(Connection conn) throws SQLException {
		String sql = "SELECT S.title, S.year, S.duration, descr, A.full_name, AL.title FROM song AS S "
				+ "INNER JOIN has AS H ON S.id = H.id_song INNER JOIN artist AS A ON A.id = H.id_artist LEFT JOIN album AS AL ON AL.id = H.id_album INNER JOIN genre AS G ON G.id = S.id_genre "
				+ "INNER JOIN artist AS AR ON AR.id = AL.id_artist " + "WHERE rate_top = TRUE;";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Song> list = new ArrayList<Song>();
		// ListIterator<Song> cursor = list.listIterator();
		// String previous_title = " ";

		while (rs.next()) {

			String title = rs.getString("S.title");
			String artist = rs.getString("A.full_name");

			float duration = rs.getFloat("S.duration");
			String genre = rs.getString("descr");
			int year = rs.getInt("S.year");
			String album = rs.getString("AL.title");

			if (rs.wasNull()) { // if song is a single
				album = " ";
			}

			Song best_song = new Song();
			best_song.setTitle(title);
			best_song.setDuration(duration);
			best_song.setGenre(genre);
			best_song.setArtist(artist);
			best_song.setAlbum(album);
			best_song.setYear(year);

			list.add(best_song);
		}

		if (list.size() > 0) {
			return list;
		}

		return null;
	}

	// LIST ALL SONGS
	public static List<Song> listSongs(Connection conn) throws SQLException {
		String sql = "SELECT S.id, S.title, S.year, S.duration, S.rate_top,descr, A.full_name, AL.title "
				+ "FROM song AS S INNER JOIN has AS H ON S.id = H.id_song "
				+ "INNER JOIN artist AS A ON A.id = H.id_artist " + "LEFT JOIN album AS AL ON AL.id = H.id_album "
				+ "INNER JOIN genre AS G ON G.id = S.id_genre " + "INNER JOIN artist AS AR ON AR.id = AL.id_artist;";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Song> list = new ArrayList<Song>();

		while (rs.next()) {

			String title = rs.getString("S.title");
			String artist = rs.getString("A.full_name");

			float duration = rs.getFloat("S.duration");
			String genre = rs.getString("descr");
			int year = rs.getInt("S.year");
			String album = rs.getString("AL.title");
			boolean top = rs.getBoolean("S.rate_top");
			int id = rs.getInt("S.id");

			if (rs.wasNull()) { // if song is a single
				album = " ";
			}

			Song best_song = new Song();
			best_song.setTitle(title);
			best_song.setDuration(duration);
			best_song.setGenre(genre);
			best_song.setArtist(artist);
			best_song.setAlbum(album);
			best_song.setYear(year);
			best_song.setIs_top(top);
			best_song.setID(id);

			list.add(best_song);

		}

		if (list.size() > 0) {
			return list;
		}

		return null;
	}

	// LIST ALL USER
	public static List<User> listUser(Connection conn) throws SQLException {
		String sql = "SELECT username, first_name, last_name, email FROM users;";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<User> list = new ArrayList<User>();

		while (rs.next()) {

			String username = rs.getString("username");
			String firstname = rs.getString("first_name");
			String lastname = rs.getString("last_name");
			String email = rs.getString("email");

			User client = new User();
			client.setUsername(username);
			client.setFirstname(firstname);
			client.setLastname(lastname);
			client.setEmail(email);

			list.add(client);

		}

		if (list.size() > 0) {
			return list;
		}

		return null;
	}

	// RETUNR ID_GENRE
	public static int Return_ID_genre(Connection conn, String genre) throws SQLException {
		String sql = "SELECT id FROM genre WHERE descr = ?";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, genre);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	// RETURN ID_ARTIST
	public static int Return_ID_artist(Connection conn, String full_name) throws SQLException {
		String sql = "SELECT id FROM artist WHERE full_name = ?;";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, full_name);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	// RETURN ID_ALBUM
	public static int Return_ID_album(Connection conn, String name, String artist, int year) throws SQLException {

		int idartist = DBUtils.Return_ID_artist(conn, artist);
		String sql = "SELECT id FROM album WHERE title = ? AND id_artist = ? AND year = ?;";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, name);
		pstm.setInt(2, idartist);
		pstm.setInt(3, year);

		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	// ADD SONG (return the id generated by the dbb)
	public static int insertSong(Connection conn, Song song) throws SQLException {
		String sql = "Insert into Song values (?,?,?,?,?)";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);

		String title = song.getTitle();
		int year = song.getYear();
		Float duration = song.getDuration();
		String genre = song.getGenre();
		Boolean isTop = song.isIs_top();
		int id_genre = Return_ID_genre(conn, genre);

		pstm.setString(1, title);
		pstm.setInt(2, year);
		pstm.setFloat(3, duration);
		pstm.setBoolean(4, isTop);
		pstm.setInt(5, id_genre);

		pstm.executeUpdate();

		String sql1 = "SELECT id FROM song WHERE title=?, year=?,duration=?,rate_top=?,id_genre=?)";

		PreparedStatement pstm1 = conn.prepareStatement(sql1);

		pstm1.setString(1, title);
		pstm1.setInt(2, year);
		pstm1.setFloat(3, duration);
		pstm1.setBoolean(4, isTop);
		pstm1.setInt(5, id_genre);

		ResultSet rs = pstm1.executeQuery();

		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	// ADD ARTIST (return the id generated by the dbb)
	public static int insertArtist(Connection conn, String fullname) throws SQLException {
		String sql = "Insert into artist values (?)";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, fullname);

		pstm.executeUpdate();

		String sql1 = "SELECT id FROM artist WHERE first_name=?, last_name=?";

		PreparedStatement pstm1 = conn.prepareStatement(sql1);

		pstm.setString(1, fullname);

		ResultSet rs = pstm1.executeQuery();

		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	// ADD ALBUM (return the id generated by the dbb)
	public static int insertAlbum(Connection conn, Album album, String full_name) throws SQLException {
		String sql = "Insert into album values (?,?,?,?,?)";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);

		String title = album.getName();
		int year = album.getYear();
		Float duration = album.getDuration();
		Blob cover = album.getCover();
		int id_artist = Return_ID_artist(conn, full_name);

		pstm.setString(1, title);
		pstm.setInt(2, id_artist);
		pstm.setFloat(3, duration);
		pstm.setInt(4, year);
		pstm.setBlob(5, cover);

		pstm.executeUpdate();

		String sql1 = "SELECT id FROM album WHERE title = ?, id_artist=?, year=?";

		PreparedStatement pstm1 = conn.prepareStatement(sql1);

		pstm.setString(1, title);
		pstm.setInt(2, id_artist);
		pstm.setInt(3, year);

		ResultSet rs = pstm1.executeQuery();

		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	// ADD LINK ALBUM, ARTIST AND RELATIVE SONG
	public static void link(Connection conn, int id_album, int id_song, int id_artist) throws SQLException {
		String sql = "Insert into has values (?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id_song);
		pstm.setInt(2, id_artist);
		pstm.setInt(3, id_album);

		pstm.executeUpdate();

	}

	// LIST ALBUMS
	public static List<Album> listAlbums(Connection conn) throws SQLException {
		String sql = "SELECT title, full_name, duration, year, cover FROM album AS AL INNER JOIN artist AS AR ON AL.id_artist = AR.id;";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Album> list = new ArrayList<Album>();

		while (rs.next()) {
			String title = rs.getString("title");
			float duration = rs.getFloat("duration");
			String artist = rs.getString("full_name");
			int year = rs.getInt("year");
			Blob cover = rs.getBlob("cover");

			Album album = new Album();
			album.setName(title);
			album.setYear(year);
			album.setDuration(duration);
			album.setArtist(artist);
			album.setCover(cover);

			list.add(album);
		}

		if (list.size() > 0) {
			return list;
		}

		return null;
	}

	// list playlist per user
	public static List<Playlist> findPlaylists(Connection conn, String user) throws SQLException {
		String sql = "SELECT title FROM playlist AS P INNER JOIN listen_to AS L ON P.id = id_playlist INNER JOIN users AS U ON U.id = id_user WHERE U.username = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, user);

		ResultSet rs = pstm.executeQuery();

		List<Playlist> list = new ArrayList<Playlist>();

		while (rs.next()) {

			String title = rs.getString("title");
			Playlist playlist = new Playlist(title);
			list.add(playlist);

		}

		if (list.size() > 0) {
			return list;
		}

		return null;
	}

	// list playlist per TEST (TO DELETE)
	public static List<Playlist> test(Connection conn) throws SQLException {
		String sql = "SELECT title FROM playlist AS P INNER JOIN listen_to AS L ON P.id = id_playlist INNER JOIN users AS U ON U.id = id_user;";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();

		List<Playlist> list = new ArrayList<Playlist>();

		while (rs.next()) {

			String title = rs.getString("title");
			Playlist playlist = new Playlist(title);
			list.add(playlist);
		}

		if (list.size() > 0) {
			return list;
		}

		return null;
	}

	public static void AddToPlaylist(Connection conn, int idSong, int idPlaylist) throws SQLException {
		String sql = "INSERT INTO contain(id_song, id_playlist) VALUES (?,?);";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, idSong);
		pstm.setInt(2, idPlaylist);

		pstm.executeUpdate();

	}

	public static int find_IDSong(Connection conn, String name, String artist) throws SQLException {
		String sql = "SELECT S.id FROM song AS S INNER JOIN has AS H ON id_song =S.id INNER JOIN artist AS A ON A.id = id_artist WHERE title = ? AND full_name = ?;";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, name);
		pstm.setString(2, artist);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	public static int find_IDPlaylist(Connection conn, String name, String username) throws SQLException {
		String sql = "SELECT id" + "FROM playlist AS P INNER JOIN listen_to ON P.id = id_playlist"
				+ "INNER JOIN users AS U ON U.id = id_user" + "WHERE title = ? AND username = ?;";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, name);
		pstm.setString(2, username);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	// UPDATE ALBUM
	public static void updateAlbum(Connection conn, int id, String title, String artist, int year) throws SQLException {

		int id_artist = Return_ID_artist(conn, artist);

		if (id_artist == -1) {
			System.out.println("Artist not found! Cannot edit the album");
			return;
		}

		String sql = "UPDATE album SET title = ? , year = ?, id_artist = ?  WHERE id= ?;";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, title);
		pstm.setInt(2, year);
		pstm.setInt(3, id_artist);
		pstm.setInt(4, id);

		pstm.executeUpdate();
	}

	// UPDATE SONG
	public static void updateSong(Connection conn, int id_song, String title, String artist, int year, String genre,
			Float duration, String album, boolean top) throws SQLException {

		int id_artist = Return_ID_artist(conn, artist);
		int id_genre = Return_ID_genre(conn, genre);
		int id_album = Return_ID_album(conn, album, artist, year);

		if (id_artist == -1) {
			System.out.println("Artist not found! Cannot edit the album");
			return;
		}
		if (id_genre == -1) {
			System.out.println("No such genre found!");
			return;
		}

		String sql = "UPDATE song SET title = ? , year = ?, duration = ?, rate_top = ?, id_genre = ?  WHERE id= ?;";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, title);
		pstm.setInt(2, year);
		pstm.setFloat(3, duration);
		pstm.setBoolean(4, top);
		pstm.setInt(5, id_genre);
		pstm.setInt(6, id_song);

		pstm.executeUpdate();

		sql = "UPDATE has SET id_song = ? , id_artist = ?, id_album = ?;";

		pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id_song);
		pstm.setInt(2, id_artist);
		pstm.setInt(3, id_album);

		pstm.executeUpdate();
	}

	// RETUNR ID_SONG
	public static int Return_ID_song(Connection conn, String title, int year, int id_genre, Float duration)
			throws SQLException {
		String sql = "SELECT id FROM song WHERE title = ? AND year = ? AND id_genre = ? AND duration = ?;";
		int id = -1;

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, title);
		pstm.setInt(2, year);
		pstm.setInt(3, id_genre);
		pstm.setFloat(4, duration);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			id = rs.getInt("id");
		}

		return id;
	}

	// INSERT SONG
	public static void insertSong(Connection conn, String title, String artist, int year, String genre, Float duration,
			String album, boolean top) throws SQLException {

		int id_artist = Return_ID_artist(conn, artist);
		int id_genre = Return_ID_genre(conn, genre);
		int id_album = Return_ID_album(conn, album, artist, year);

		if (id_artist == -1) {
			System.out.println("Artist not found! Cannot edit the song");
			return;
		}

		if (id_genre == -1) {
			System.out.println("No such genre found! Cannot edit the song");
			return;
		}

		if (id_artist == -1) {
			System.out.println("Album not found! Cannot edit the song");
			return;
		}

		String sql = "INSERT INTO song (title, year, duration, rate_top, id_genre) VALUES (? , ?, ?, ?, ?);";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, title);
		pstm.setInt(2, year);
		pstm.setFloat(3, duration);
		pstm.setBoolean(4, top);
		pstm.setInt(5, id_genre);

		pstm.executeUpdate();

		int id_song = Return_ID_song(conn, title, year, id_genre, duration);

		sql = "INSERT INTO has (id_song, id_artist, id_album) VALUES (? , ?, ?);";

		pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id_song);
		pstm.setInt(2, id_artist);
		pstm.setInt(3, id_album);

		pstm.executeUpdate();
	}

	// ADD User
	public static int insertUser(Connection conn, User user) throws SQLException {
		String sql = "Insert into users values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		String username = user.getUsername();
		String firstname = user.getFirstname();
		String lastname = user.getLastname();
		int birth_year = user.getBirth_year();
		int birth_month = user.getBirth_month();
		int birth_day = user.getBirth_day();
		String gender = user.getGender();
		String country = user.getCountry();
		String city = user.getCity();
		String street = user.getStreet();
		String street_number = user.getStreet_number();
		int postcode = user.getPostcode();
		String email = user.getEmail();
		String psw = user.getPsw();
		String facetoken = user.getFacetoken();
		String appletoken = user.getAppletoken();
		String gmailtoken = user.getGmailtoken();
		String role = user.getRole();

		pstm.setString(1, username);
		pstm.setString(2, firstname);
		pstm.setString(3, lastname);
		pstm.setInt(4, birth_year);
		pstm.setInt(5, birth_month);
		pstm.setInt(6, birth_day);
		pstm.setString(7, gender);
		pstm.setString(8, country);
		pstm.setString(9, city);
		pstm.setString(10, street);
		pstm.setString(11, street_number);
		pstm.setInt(12, postcode);
		pstm.setString(13, email);
		pstm.setString(14, psw);
		pstm.setString(15, facetoken);
		pstm.setString(16, appletoken);
		pstm.setString(17, gmailtoken);
		pstm.setString(18, role);

		return pstm.executeUpdate();

	}

	public static User findUser(Connection conn, String email, String password) throws SQLException {

		String sql = "Select id, username, first_name, last_name, id_role FROM users WHERE email = ? AND psw = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, email);
		pstm.setString(2, password);

		ResultSet rs = pstm.executeQuery();
		User user = new User();

		if (rs.next()){
		user.setUsername(rs.getString("username"));
		user.setFirstname(rs.getString("first_name"));
		user.setLastname(rs.getString("last_name"));	
		user.setID(rs.getInt("id"));
		
		int id_role = rs.getInt("id_role");
		
		sql = "Select type FROM roles WHERE id = ?";
		pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id_role);
		rs = pstm.executeQuery();
		rs.next();
		
		user.setRole(rs.getString("type"));
		
		}
		else {
			user = null;
		}
		
		
		return user;
	}

	public static void deleteAlbum(Connection conn, int id_album) throws SQLException {
		String sql = "Delete From song where id = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id_album);

		pstm.executeUpdate();
	}

	// DELETE SONG
	public static void deleteSong(Connection conn, int id_song) throws SQLException {
		String sql = "Delete From song where id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id_song);

		pstm.executeUpdate();
	}
}
