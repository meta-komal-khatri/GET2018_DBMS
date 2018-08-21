package dbms_session_5;


import java.sql.DriverManager;
import java.sql.SQLException;

public final class ConnectionHelper {
	private ConnectionHelper(){
		
	}
	public static java.sql.Connection getConnection() throws ClassNotFoundException, SQLException{
		 
			java.sql.Connection conn=null;
			String DB_URL = "jdbc:mysql://localhost/storefront1";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(DB_URL,"root", "1234");
			} 
			catch (ClassNotFoundException e) {
				throw new ClassNotFoundException("conn is null");
			}catch (SQLException e) {
				throw new SQLException();
			} 
			return conn;
	}
	public static void closeConection(java.sql.Connection conn) throws SQLException{
		try {
			if(conn!=null) {
				conn.close();
			}
		}catch(SQLException se) {
			throw new SQLException();
		}
	}
}
