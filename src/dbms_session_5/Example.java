package dbms_session_5;

import java.sql.SQLException;
import java.util.List;

public class Example {
public static void main(String[] args) throws ClassNotFoundException, SQLException{
	
	String query=QueryHelper.selectOrdersByShopperId(5);
	OrderDao handler=new OrderDao(ConnectionHelper.getConnection());
	List<Order> orderlisthandler=handler.selectByShopperId(query);
	System.out.println(orderlisthandler.toString());
	QueryHelper.insertImages(3);
	
}
}
