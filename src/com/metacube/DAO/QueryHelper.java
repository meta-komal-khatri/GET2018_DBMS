package com.metacube.DAO;
import com.metacube.exception.*;

import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.metacube.jdbcConnection.*;
public class QueryHelper {
	private static String query;

	QueryHelper(){
	}
	public static String selectOrdersByShopperId(int id) {
		query="SELECT Order_Id,Date_order FROM storefront1.order WHERE status='shipped' AND Shopper_Id='"+id+
				"'ORDER BY Date_order ASC";
		return query;
	}
	public static void insertImages(int id) throws ClassNotFoundException, SQLException, MySqlDriverClassException, FileNotFoundException, NullPreparedStatementException, NullConnectionException {
		query="INSERT INTO product_images (Product_Id,P_Images) VALUES (?,?)";
		List<String> images=new ArrayList<String>();
		//images.add("C:\\Users\\User30\\Desktop\\website.jpg");
		images.add("C:\\Users\\popla\\Desktop\\download.jpg");
		images.add("C:\\Users\\popla\\Desktop\\images.jpg");
		ProductImagesDao dao=new ProductImagesDao(ConnectionHelper.getConnection());
		dao.insertImage(query, images,id);
		
	}
	public void updateProductStatus() {
		query="UPDATE product";
	}
}