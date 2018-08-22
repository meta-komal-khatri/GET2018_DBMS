package com.metacube.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.metacube.exception.NullPreparedStatementException;

public class ProductDao extends QueryHandler {

	ProductDao(Connection conn) {
		super(conn);
	}
	public int updateProduct(){
		int updatedRows = 0;
		String query = QueryHelper.updateProductStatus();
		PreparedStatement preparedStatement=null;
		try{
			preparedStatement=conn.prepareStatement(query);
			updatedRows=preparedStatement.executeUpdate();
			System.out.println(updatedRows);
		}
		catch(SQLException e){
			e.printStackTrace();
		}finally{
			try {
				closePreparedStatement(preparedStatement);
			} catch (NullPreparedStatementException e) {
				e.printStackTrace();
			}
		}
		return updatedRows;
	}

}
