package dbms_session_5;

import java.sql.Connection;
import java.sql.SQLException;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class QueryHandler {
	java.sql.Connection conn;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
	QueryHandler(java.sql.Connection conn){
		this.conn=conn;
		System.out.println("ksjc1");
	}
	public ResultSet select(String query) throws SQLException{
		PreparedStatement statement = null;
		ResultSet resultSet=null;
		try {
			statement =(PreparedStatement) conn.prepareStatement(query);
			
			resultSet=(ResultSet) statement.executeQuery();
			resultSet.beforeFirst();
			System.out.println(resultSet.getInt("Order_Id"));
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(statement!=null) {
					statement.close();
				}
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
		return resultSet;
	}
}
