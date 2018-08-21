package com.metacube.DAO;
import com.metacube.exception.*;
import com.metacube.jdbcConnection.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;

public class OrderDao extends QueryHandler {
	private List<Order> orderList;
	OrderDao(Connection conn) {
		
		super(conn);
		
	}
	public List<Order> selectByShopperId(String query) 
			throws NullResultSetException, NullConnectionException, SQLException,MySqlDriverClassException, NullPreparedStatementException{
		ResultSet resultSet=null;
		
			try{
				orderList=new ArrayList<Order>();
				resultSet=select(query);
				while(resultSet.next()){
					orderList.add(new Order(resultSet.getInt("Order_Id"),resultSet.getDate("Date_order")));
				}
			}
			
			catch(NullPointerException ex) {
				throw new NullResultSetException("result set is empty");
			}
			
			catch(SQLException e){
				
			}
			
			finally{
				ConnectionHelper.closeConection(conn);	
				resultSet.close();
			}
		
		return orderList;

	}
}
