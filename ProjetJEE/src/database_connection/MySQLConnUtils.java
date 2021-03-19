package database_connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnUtils {

	public static Connection getMySQLConnection() throws ClassNotFoundException, SQLException {
		// Note: Change the connection parameters accordingly.
		String hostName = "database-1.csxvbzuhyzki.eu-west-3.rds.amazonaws.com";
		String dbName = "info_team01_schema";
		String userName = "info_team01";
		String password = "GvPk32X8";
		return getMySQLConnection(hostName, dbName, userName, password);
	}

	public static Connection getMySQLConnection(String hostName, String dbName, String userName, String password)
			throws SQLException, ClassNotFoundException {

		//load the jdbc driver
		Class.forName("com.mysql.cj.jdbc.Driver");

		// URL Connection for MySQL:
		// Example:
		// jdbc:mysql://localhost:3306/simplehr
		String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
		

		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		
		return conn;
	}
}