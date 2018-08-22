package com.metacube.dao;

public class QueryHelper {
	private static String query;

	QueryHelper(){
	}
	public static String selectOrdersByShopperId(int id) {
		query="SELECT Order_Id,Date_order FROM storefront1.order WHERE status='shipped' AND Shopper_Id=? ORDER BY Date_order ASC";
		return query;
	}
	public static String insertImages() {
		query="INSERT INTO product_images (Product_Id,P_Images) VALUES (?,?)";
		return query;
		
	}
	public static String updateProductStatus() {
		query="UPDATE product p INNER JOIN (SELECT p1.idProduct FROM product  p1\n "
				+ "WHERE idProduct NOT IN\n"
				+ "(SELECT DISTINCT(OP.Product_Id) FROM order_product AS OP\n "
				+ "INNER JOIN storefront1.order AS O\n"
				+ " ON OP.Order_Id=O.Order_Id\n"
				+ "WHERE DATEDIFF(CURDATE(),O.Date_order)<90)) AS t\n"
				+ "ON t.idProduct=p.idProduct\n"
				+ "SET p.P_status='"+"Inactive"+"'";
           return query;      
	}
	public static String selectTopCategoriesAndTheirChildCount(){
		query="SELECT Category_type,IFNULL(ct.Counted,0) AS ChildCount\n "
				+ "FROM category c LEFT JOIN\n"
				+ "(SELECT Parent_Cat_Id,COUNT(*) AS counted FROM category\n"
				+ "WHERE Parent_Cat_Id IS NOT NULL GROUP BY Parent_Cat_Id ) ct \n"
				+ "ON c.Category_Id=ct.Parent_Cat_Id \n"
				+ "WHERE c.Parent_Cat_Id IS NULL ";
		return query;
	}
}