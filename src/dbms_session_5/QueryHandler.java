package dbms_session_5;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class QueryHandler {
	java.sql.Connection conn;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
	QueryHandler(java.sql.Connection conn){
		this.conn=conn;
	}
	public ResultSet select(String query) throws SQLException{
		PreparedStatement statement = null;
		ResultSet resultSet=null;
		try {
			statement =(PreparedStatement) conn.prepareStatement(query);
			resultSet=(ResultSet) statement.executeQuery();
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
