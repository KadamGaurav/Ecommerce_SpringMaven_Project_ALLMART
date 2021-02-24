package com.ecomm.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import static org.junit.Assert.*;

import com.ecomm.dao.CartDAO;
import com.ecomm.model.Cart;


public class CartDAOTest 
{
	static CartDAO cartDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		cartDAO=(CartDAO)myContext.getBean("cartDAO");
	}
	
	@Test
	public void addCartTest()
	{
		Cart cart=new Cart();
		//cart.setCartItemId(0002);
		cart.setProductId(1002);
		cart.setProductName("Nokia 8700");
		cart.setQnty(4);
		cart.setTotalPrice(95000);
		cart.setUsername("Diana");
		cart.setPaid("N");
		cart.setTxdate("2021-01-14");
		
		assertTrue("Problem in adding cart", cartDAO.addCart(cart));
	}
}
