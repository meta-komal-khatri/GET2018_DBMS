package com.metacube.DAO;
import com.metacube.exception.*;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import com.metacube.jdbcConnection.*;

public class Example {
public static void main(String[] args) throws ClassNotFoundException, SQLException, NullResultSetException, NullConnectionException, MySqlDriverClassException, NullPreparedStatementException, FileNotFoundException{
	
	String query=QueryHelper.selectOrdersByShopperId(5);
	OrderDao handler=new OrderDao(ConnectionHelper.getConnection());
	List<Order> orderlisthandler=handler.selectByShopperId(query);
	System.out.println(orderlisthandler.toString());
	QueryHelper.insertImages(3);
	
}
}
