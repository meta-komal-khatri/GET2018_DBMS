package dbms_session_5;

import java.sql.SQLException;
import java.util.List;

public class Example {
public static void main(String[] args) throws ClassNotFoundException, SQLException{
	QueryHelper helper=new QueryHelper();
	String query=helper.selectOrdersByShopperId(5);
	OrderDao handler=new OrderDao(Connection.getConnection());
	List<Order> orderlisthandler=handler.selectByShopperId(query);
	System.out.println(orderlisthandler.toString());
}
}
