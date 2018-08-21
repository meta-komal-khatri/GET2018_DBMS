package dbms_session_5;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class ProductImagesDao extends QueryHandler{

	ProductImagesDao(Connection conn) {
		super(conn);
	}
	public void insertImage(String query,List<String> images){
		PreparedStatement preparedStatement=null;
		InputStream inputStream=null;
		try{
			preparedStatement=conn.prepareStatement(query);
			conn.setAutoCommit(false);
			for (int i = 0; i < images.size(); i++) {
				File file=new File(images.get(i));
				inputStream = new FileInputStream(file);
				preparedStatement.setBinaryStream(1, (InputStream) inputStream,(int)file.length());
				preparedStatement.addBatch();
			}
			int[] result=preparedStatement.executeBatch();
			conn.commit();
		}catch(FileNotFoundException e){
			
		}
		catch(SQLException ex){
			
		}
	}

}
