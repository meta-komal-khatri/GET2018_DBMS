package com.metacube.dao;
import com.metacube.pojos.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.metacube.exception.NullConnectionException;
import com.metacube.exception.NullResultSetException;
import com.metacube.jdbcConnection.ConnectionHelper;
import com.metacube.pojos.Order;

public class CategoryDao extends QueryHandler{

	CategoryDao(Connection conn) {
		super(conn);
	}
	public List<Category> selectTopCategoryAndTheirCount(){
		String query=QueryHelper.selectTopCategoriesAndTheirChildCount();
		PreparedStatement preparedStatement=null;
		List<Category> categoryList=new ArrayList<Category>();
		ResultSet resultSet=null;
		try{
		preparedStatement =conn.prepareStatement(query);
		resultSet=preparedStatement.executeQuery();
		while(resultSet.next()){
			
		}
		}catch(Exception e){
			
		}
		return categoryList;

	}
	

}
