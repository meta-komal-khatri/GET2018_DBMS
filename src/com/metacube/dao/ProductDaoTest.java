package com.metacube.dao;

import static org.junit.Assert.*;

import org.junit.Test;

import com.metacube.exception.MySqlDriverClassException;
import com.metacube.jdbcConnection.ConnectionHelper;

public class ProductDaoTest {

	@Test
	public void test() {
		ProductDao dao;
		try {
			dao = new ProductDao(ConnectionHelper.getConnection());
			int updatedRows=dao.updateProduct();
			System.out.println(updatedRows);
		
		} catch (MySqlDriverClassException e) {
			e.printStackTrace();
		}
		
	}
}
