package com.metacube.dao;
import com.metacube.exception.*;
import com.metacube.jdbcConnection.*;
import com.metacube.pojos.*;

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
	public List<Order> selectByShopperId(int id) throws NullResultSetException{
			ResultSet resultSet=selectShopperById(id);
		try{
			orderList=new ArrayList<Order>();
			while(resultSet.next()){
				orderList.add(new Order(resultSet.getInt("Order_Id"),resultSet.getDate("Date_order")));
			}
		}
		
		catch(NullPointerException e){
			throw new NullResultSetException("result set is null");
		}
		
		catch(SQLException e){
			e.printStackTrace();
		}

		finally{
			try {
				ConnectionHelper.closeConection(conn);
			} catch (NullConnectionException e) {
				e.printStackTrace();
			}
			//closePreparedStatement(statement);
			try {
				closeResultSet(resultSet);
			} catch (NullResultSetException e) {
				e.printStackTrace();
			}
		}

		return orderList;

	}
}
