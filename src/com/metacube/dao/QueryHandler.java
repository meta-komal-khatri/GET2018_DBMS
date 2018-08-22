package com.metacube.dao;

import com.metacube.exception.*;

import java.io.FileNotFoundException;
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
	public ResultSet selectShopperById(int id) {
		PreparedStatement statement = null;
		ResultSet resultSet=null;
		try {
			String query=QueryHelper.selectOrdersByShopperId(id);
			statement =conn.prepareStatement(query);
			statement.setInt(1,id);
			resultSet=statement.executeQuery();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return resultSet;
	}
	
	public void insertImagesIntoProduct(List<String> images,int id){
		ProductImagesDao dao=new ProductImagesDao(conn);
	
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
