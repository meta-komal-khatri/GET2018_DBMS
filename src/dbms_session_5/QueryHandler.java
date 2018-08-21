package dbms_session_5;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class QueryHandler {
	Connection conn;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
	QueryHandler(Connection conn){
		this.conn=conn;
	}
	public ResultSet select(String query) throws SQLException{
		PreparedStatement statement = null;
		ResultSet resultSet=null;
		try {
			statement =(PreparedStatement) conn.prepareStatement(query);
			resultSet=statement.executeQuery();
			return resultSet;
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
	
		return null;
	}
	public void insertIntoBatch(String query,List<String> images){
		PreparedStatement preparedStatement=null;
		/*try{
			conn.setAutoCommit(false);
			for (int i = 0; i < images.size(); i++) {
				preparedStatement.setString(2, "RuleSubTitle");
				preparedStatement.setInt(3, i);
				preparedStatement.addBatch();
			}
		}*/
	}
}
