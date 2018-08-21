package com.metacube.DAO;
import com.metacube.exception.*;
import com.metacube.jdbcConnection.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.BatchUpdateException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class ProductImagesDao extends QueryHandler{

	ProductImagesDao(Connection conn) {
		super(conn);
		System.out.println("mdk");
	}
	public void insertImage(List<String> images,int id) 
			throws NullPreparedStatementException, SQLException, NullConnectionException, FileNotFoundException{
		PreparedStatement preparedStatement=null;
		FileInputStream inputStream=null;
		String query=QueryHelper.insertImages(id);
		try{
			
			preparedStatement=conn.prepareStatement(query);
			conn.setAutoCommit(false);
			
			for (int i = 0; i < images.size(); i++) {
				
				File file=new File(images.get(i));
				inputStream = new FileInputStream(file);
				
				preparedStatement.setInt(1, id);
				preparedStatement.setBinaryStream(2, (InputStream) inputStream,(int)file.length());
				
				preparedStatement.addBatch();
				//preparedStatement.execute();
			}
			
			int[] result=preparedStatement.executeBatch(); 
			conn.commit();
		}
		
		catch(FileNotFoundException e){
			throw new FileNotFoundException("No such image file exist");	
		}
		
		
		catch(BatchUpdateException e) {
			rollback();
			//throw new BatchUpdateException();
			/*int[] updateCount = e.getUpdateCounts();
			int count = 1;
			for (int i : updateCount) {
				if  (i == Statement.EXECUTE_FAILED) {
					System.out.println("Error on request " + count +": Execute failed");
				} 
				
				else {
					System.out.println("Request " + count +": OK");
				}

				count++;*/
			}
		

		catch(SQLException ex){
			rollback();
		}
		
		finally
		{
			closePreparedStatement(preparedStatement);
			ConnectionHelper.closeConection(conn);
		}
		
	}

}
