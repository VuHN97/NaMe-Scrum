package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectDBUtil {
		private static Connection conn;
		private static final String USERNAME = "root";
		private static final String PASSWORD = "";
		private static final String URL = "jdbc:mysql://localhost:3306/mydb";
		public static Connection getConnection() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return conn;
		}
		public static void close(Connection conn) {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		public static void close(Statement st) {
			if(st != null) {
				try {
					st.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		public static void close(ResultSet rs) {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		public static void close(ResultSet rs, Statement st, Connection conn) {
			close(rs);
			close(st);
			close(conn);
		}
		
		public static void main(String[] args) {
			System.out.println(ConnectDBUtil.getConnection());
		}
}