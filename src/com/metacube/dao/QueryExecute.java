package com.metacube.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.BatchUpdateException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.metacube.exception.OperationFailedException;
import com.metacube.jdbcConnection.ConnectionHelper;
import com.metacube.pojos.Category;
import com.metacube.pojos.Order;


public class QueryExecute {



	public List<Order> selectByShopperId(int id) throws OperationFailedException{
		ResultSet resultSet=null;
		List<Order> orderList=new ArrayList<Order>();
		String query=QueryHelper.selectOrdersByShopperId(id);
		try(Connection conn=ConnectionHelper.getConnection();
				PreparedStatement statement=conn.prepareStatement(query);){
			statement.setInt(1,id);
			resultSet=statement.executeQuery();
			while(resultSet.next()){
				orderList.add(new Order(resultSet.getInt("Order_Id"),resultSet.getDate("Date_order")));
			}
		}
		catch (SQLException e) {
			throw new OperationFailedException("Select for order failed");
		} 
		return orderList;
	}

	public int insertImagesIntoProduct(List<String> images,int id) throws OperationFailedException{

		FileInputStream inputStream=null;
		int[] result=new int[100];
		String query=QueryHelper.insertImages();

		try(Connection conn=ConnectionHelper.getConnection();
				PreparedStatement preparedStatement=conn.prepareStatement(query);){
			try {
				conn.setAutoCommit(false);
				for (int i = 0; i < images.size(); i++) {

					File file=new File(images.get(i));
					inputStream = new FileInputStream(file);

					preparedStatement.setInt(1, id);
					preparedStatement.setBinaryStream(2, (InputStream) inputStream,(int)file.length());

					preparedStatement.addBatch();
	
					//preparedStatement.execute();
				}

				result=preparedStatement.executeBatch(); 
				conn.commit();
			}
			catch(FileNotFoundException e) {
				throw new OperationFailedException("File not found");
			}
			catch(BatchUpdateException e) {
				throw new OperationFailedException("Batch update exception");
			}
			catch(SQLException e) {
				conn.rollback();
				throw new OperationFailedException("Insert image for product failed");
			}
		}catch(SQLException se) {
			throw new OperationFailedException("rollback failed");
		}
		return result.length;

	}
	public int updateProductStatus() throws OperationFailedException {
		int updatedRows = 0;
		String query = QueryHelper.updateProductStatus();
		try(Connection conn=ConnectionHelper.getConnection();
				PreparedStatement statement=conn.prepareStatement(query);){
			updatedRows=statement.executeUpdate();
		}
		catch(SQLException e){
			throw new OperationFailedException("Update method for product failed");
		}

		return updatedRows;
	}

	public List<Category> selectTopCategoryAndTheirCount() throws OperationFailedException{
		String query=QueryHelper.selectTopCategoriesAndTheirChildCount();
		ResultSet resultSet=null;
		
		List<Category> categoryList=new ArrayList<Category>();
		
		try(Connection conn=ConnectionHelper.getConnection();
				PreparedStatement statement=conn.prepareStatement(query);){ 

			resultSet=statement.executeQuery();
			while(resultSet.next()){
				
				categoryList.add(new Category(resultSet.getInt("ChildCount"),resultSet.getString("Category_type")));
			}
		}catch(SQLException e){
			System.out.println(e.getMessage());
			
			throw new OperationFailedException("Select method for category failed");
		}
		return categoryList;

	}

}

