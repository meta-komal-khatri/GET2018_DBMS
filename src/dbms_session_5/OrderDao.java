package dbms_session_5;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.ResultSet;

public class OrderDao extends QueryHandler {
	private List<Order> orderList;
	OrderDao(java.sql.Connection conn) {
		
		super(conn);
		System.out.println("ksjc");
		
	}
	public List<Order> selectByShopperId(String query) throws SQLException{
		ResultSet resultSet=null;
		try{
			orderList=new ArrayList<Order>();
			resultSet=select(query);
			System.out.println(orderList.size());
			while(resultSet.next()){
				
				orderList.add(new Order(resultSet.getInt("Order_Id"),resultSet.getDate("Date_order")));
				System.out.println(orderList.size());
			}
		}catch(SQLException e){
			
		}
		finally{
			dbms_session_5.Connection.closeConection(conn);
			resultSet.close();
		}
		return orderList;

	}
}
