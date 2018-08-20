package dbms_session_5;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class JDBCConnection {

	private Connection getConnection(){
		Connection conn=null;
		String DB_URL = "jdbc:mysql://localhost/storefront1";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(DB_URL,"root", "1234");
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		return conn;
	}


	public void selectQueryExecution(String query){
		Connection conn=getConnection();
		PreparedStatement statement = null;
		try {
			statement =(PreparedStatement) conn.prepareStatement(query);

			ResultSet resultSet=(ResultSet) statement.executeQuery();
			while(resultSet.next()) {
				System.out.println(resultSet.getInt("Order_Id")+"  "+resultSet.getDate("Date_order"));


			}
			conn.close();
			statement.close();
			resultSet.close();

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
			try {
				if(conn!=null) {
					conn.close();
				}
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}

	}

	public void insertIntoBatch(String query,List<String> images) {
		FileInputStream inputStream = null;

		try(Connection conn=getConnection();
				PreparedStatement preparedStatement=(PreparedStatement) conn.prepareStatement(query);){
			conn.setAutoCommit(false);
			for (int i = 0; i <images.size(); i++) {
				try {
					String s=images.get(i);
					File image = new File(s);

					inputStream = new FileInputStream(image);
				
				preparedStatement.setInt(1, 5);
				 preparedStatement.setBinaryStream(2, (InputStream) inputStream, (int)(image.length()));
				preparedStatement.addBatch();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			int[] result = preparedStatement.executeBatch();
			conn.commit();
			 System.out.println(images.get(0));

		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
