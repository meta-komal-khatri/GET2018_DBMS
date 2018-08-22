package com.metacube.dao;

public class QueryHelper {
	private static String query;

	QueryHelper(){
	}
	public static String selectOrdersByShopperId(int id) {
		query="SELECT Order_Id,Date_order FROM storefront1.order WHERE status='shipped' AND Shopper_Id=? ORDER BY Date_order ASC";
		return query;
	}
	public static String insertImages(int id) {
		query="INSERT INTO product_images (Product_Id,P_Images) VALUES (?,?)";
		return query;
		
	}
	public static void updateProductStatus() {
		query="UPDATE product";
	}
}