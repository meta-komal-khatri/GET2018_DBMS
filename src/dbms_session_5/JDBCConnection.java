package dbms_session_5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.ResultSet;

public class JDBCConnection {

	static String USER = "root";
	static String PASS = "1234";
	Connection conn;
	Statement stmt;
	private Connection getConnection(){
		Connection conn=null;
		String DB_URL = "jdbc:mysql://localhost/storefront1";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(DB_URL,"root", "1234");
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		return conn;
	}
	public boolean selectQueryExecution(String query){
		Connection conn=getConnection();
		Statement statement;
		try {
			statement = conn.createStatement();

			ResultSet resultSet=(ResultSet) statement.executeQuery(query);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return false;
		
	}

}
