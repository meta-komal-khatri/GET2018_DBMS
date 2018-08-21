package dbms_session_5;

import java.sql.SQLException;
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
	public static void insertImages(int id) throws ClassNotFoundException, SQLException {
		query="INSERT INTO product_images (P_Images) VALUES (?) WHERE Product_Id="+id;
		List<String> images=new ArrayList<String>();
		//images.add("C:\\Users\\User30\\Desktop\\website.jpg");
		images.add("C:\\Users\\User30\\Desktop\\website.jpg");
		images.add("C:\\Users\\User30\\Desktop\\images.jpg");
		ProductImagesDao dao=new ProductImagesDao(ConnectionHelper.getConnection());
		dao.insertImage(query, images);
		
	}
}