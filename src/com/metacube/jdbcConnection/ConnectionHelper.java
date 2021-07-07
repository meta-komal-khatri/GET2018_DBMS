package com.metacube.jdbcConnection;
import com.metacube.exception.*;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class ConnectionHelper {
	private ConnectionHelper(){
		
	}
	public static Connection getConnection() throws MySqlDriverClassException{ 
			java.sql.Connection conn=null;
			String DB_URL = "jdbc:mysql://localhost/storefront1";
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(DB_URL,"root", "1234");
			} 
			
			catch (ClassNotFoundException e) {
				throw new MySqlDriverClassException("JDBC Driver class not found");
			}
			
			catch (SQLException e) {
				e.printStackTrace();
			}
			
			return conn;
	}
	
	
	public static void closeConection(Connection conn) throws NullConnectionException{
		try {
			if(conn!=null) {
				conn.close();
			}
		}
		
		catch(SQLException se) {
			throw new NullConnectionException("Connection is null");
		}
	}
}
