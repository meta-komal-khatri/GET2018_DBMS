package com.metacube.dao;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.metacube.exception.MySqlDriverClassException;
import com.metacube.jdbcConnection.ConnectionHelper;

public class ProductImagesDaoTest {

	@Test
	public void test() {
		List<String> imageList=new ArrayList<String>();
		imageList.add("C:\\Users\\User30\\Desktop\\website.jpg");
		imageList.add("C:\\Users\\User30\\Desktop\\images.jpg");
		try {
			ProductImagesDao dao=new ProductImagesDao(ConnectionHelper.getConnection());
			int j=dao.insertImage(imageList, 3);
			System.out.print(j);
		} catch (MySqlDriverClassException e) {
			e.printStackTrace(); 
		}
		
	}

}
