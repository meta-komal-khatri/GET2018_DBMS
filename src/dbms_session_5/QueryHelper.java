package dbms_session_5;

import java.util.ArrayList;
import java.util.List;

public class QueryHelper {
	private static String query;

	QueryHelper(){
	}
	public static String selectOrdersByShopperId(int id) {
		query="SELECT Order_Id,Date_order FROM storefront1.order WHERE status='shipped' AND Shopper_Id='"+id+
				"'ORDER BY Date_order ASC";
		return query;
	}
	public void insertImages() {
		query="INSERT INTO product_images (Product_Id,P_Images) VALUES (?,?)";
		List<String> images=new ArrayList<String>();
		//images.add("C:\\Users\\User30\\Desktop\\website.jpg");
		images.add("C:\\Users\\User30\\Desktop\\website.jpg");
		images.add("C:\\Users\\User30\\Desktop\\images.jpg");
		
	}
}