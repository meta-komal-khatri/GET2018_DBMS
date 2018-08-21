package com.metacube.DAO;
import com.metacube.exception.*;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import com.metacube.jdbcConnection.*;

public class Example {
public static void main(String[] args) throws ClassNotFoundException, SQLException, NullResultSetException, NullConnectionException, MySqlDriverClassException, NullPreparedStatementException, FileNotFoundException{
	
	OrderDao dao=new OrderDao(ConnectionHelper.getConnection());
	List<Order> orderList=dao.selectByShopperId(3);
	System.out.println(orderList.toString());
	
}
}
