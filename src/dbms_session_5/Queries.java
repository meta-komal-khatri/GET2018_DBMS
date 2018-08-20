package dbms_session_5;

import java.util.ArrayList;
import java.util.List;

public class Queries {
	String query;
	JDBCConnection connection;
	Queries(){
		connection=new JDBCConnection();
	}
	public void ordersOfUSer(int id) {
		query="SELECT Order_Id,Date_order FROM storefront1.order WHERE status='shipped' AND Shopper_Id='"+id+
				"'ORDER BY Date_order ASC";
		connection.selectQueryExecution(query);
	}
	public void insertImages() {
		query="INSERT INTO product_images (Product_Id,P_Images) VALUES (?,?)";
		List<String> images=new ArrayList<String>();
		images.add("C:\\Users\\popla\\Desktop\\download.jpg");
		connection.insertIntoBatch(query,images);
	}
}