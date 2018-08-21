package com;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class ConnectionHelper {
	private ConnectionHelper(){
		
	}
	public static java.sql.Connection getConnection() throws ClassNotFoundException, SQLException, MySqlDriverClassException{ 
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
				throw new SQLException();
			}
			
			return conn;
	}
	
	
	public static void closeConection(Connection conn) throws SQLException, NullConnectionException{
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
