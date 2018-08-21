package com;


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
	public ResultSet select(String query) 
			throws SQLException, NullPreparedStatementException, NullResultSetException{
		PreparedStatement statement = null;
		ResultSet resultSet=null;
		
		try {
			statement =(PreparedStatement) conn.prepareStatement(query);
			resultSet=statement.executeQuery();
			return resultSet;
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		finally {
			closePreparedStatement(statement);
			closeResultSet(resultSet);
		}
	
		return null;
	}
	
	
	
	public void closePreparedStatement(PreparedStatement statement) 
			throws NullPreparedStatementException {
		try {
			if(statement!=null) {
				statement.close();
			}
		}
		
		catch(SQLException se) {
			throw new NullPreparedStatementException("Satement is null");
		}
		
		
	}
	public void closeResultSet(ResultSet resultSet) throws NullResultSetException {
		try {
			if(resultSet!=null) {
				resultSet.close();
			}
		}
		
		catch(SQLException se) {
			throw new NullResultSetException("result set is null");
		}
	}
	
	public void rollback() throws NullConnectionException {
		try {
		if(conn!=null) {
			conn.rollback();
		}
		
		}catch(SQLException e) {
			throw new NullConnectionException("Connecton is null");
		}
	}
}
