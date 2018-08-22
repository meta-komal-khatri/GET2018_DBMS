package com.metacube.test;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.metacube.dao.QueryExecute;
import com.metacube.exception.OperationFailedException;
import com.metacube.pojos.Category;
import com.metacube.pojos.Order;

public class QueryExecuteTest {
	QueryExecute execute=new QueryExecute();
	@Test
	public void insertImagesIntoProductTest() {
		
		List<String> imageList=new ArrayList<String>();
		
		imageList.add("C:\\Users\\popla\\Desktop\\download.jpg");
		
		imageList.add("C:\\Users\\popla\\Desktop\\images.jpg");
		
		imageList.add("C:\\Users\\popla\\Desktop\\download.jpg");
		
		try {
		
			assertEquals(3,execute.insertImagesIntoProduct(imageList, 5));
		
		} catch (OperationFailedException e) {
		
			System.out.println(e.getMessage());
		}
	}

	@Test
	public void selectByShopperIdTest() throws ParseException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		
		List<Order> expectedList=new ArrayList<Order>();
		
		expectedList.add(new Order(55, formatter.parse("2018-07-29")));
	
		expectedList.add(new Order(27, formatter.parse("2018-08-09")));
		
		expectedList.add(new Order(22, formatter.parse("2018-08-10")));
		
		expectedList.add(new Order(15, formatter.parse("2018-08-17")));
		
		try {
		
			List<Order> actualList=execute.selectByShopperId(4);
			
			for(int i=0;i<actualList.size();i++) {
			
				assertEquals(expectedList.get(i).getOrderNumber(),actualList.get(i).getOrderNumber());
				
				assertEquals(expectedList.get(i).getDateOrder(),actualList.get(i).getDateOrder());	
			
			}
		
		} catch (OperationFailedException e) {
		
			System.out.println(e.getMessage());
		
		}
	}

	@Test 
	public void selectTopCategoryAndTheirCountTest() {
		List<Category> expectedList=new ArrayList<Category>();
		
		expectedList.add(new Category(3,"Men"));
		
		expectedList.add(new Category(1,"Women"));
		
		expectedList.add(new Category(1,"Electronics"));
		
		expectedList.add(new Category(0,"Grocery"));
		
		try {
		
			List<Category> actualList=execute.selectTopCategoryAndTheirCount();
			
			for(int i=0;i<actualList.size();i++) {
			
				assertEquals(expectedList.get(i).getCountOfChild(),actualList.get(i).getCountOfChild());
				System.out.println(actualList.get(i).getCategoryType());
				assertEquals(expectedList.get(i).getCategoryType(),actualList.get(i).getCategoryType());	
			}
			
		}catch(OperationFailedException e) {
			
			System.out.println(e.getMessage());
			throw new AssertionError();
			
		}

	}
	
	@Test
	public void updateProductStatusTest() {
		
		try {
			
			assertEquals(1,execute.updateProductStatus());
		
		} catch (OperationFailedException e) {
		
			System.out.println(e.getMessage());
		}
	}
}
