package com.ecomm.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest 
{

	static UserDAO userDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		userDAO=(UserDAO)myContext.getBean("userDAO");
	}

	@Test
	public void registerUsertest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("Diana");
		user.setPassword("12345");
		user.setCustomerName("Diana Daniel");
		user.setEnabled(true);
		user.setEmailId("diana@gmail.com");
		user.setMobileNo("9878558562");
		user.setAddress("Panaji");
		user.setRole("ROLE_USER");
		
		assertTrue("Problem in registering user",userDAO.registerUser(user));
	}
}
