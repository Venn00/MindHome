package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost::3306/MINDHOME";
			String dbID = "root";
			String dbPassword = "power@1023";
			Class.forName("com.mysql.jdbc.Drive");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
