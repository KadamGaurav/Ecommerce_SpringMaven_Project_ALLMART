package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

public class CategoryDAOTest 
{
	static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		categoryDAO=(CategoryDAO)myContext.getBean("categoryDAO");
	}

	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCategoryId(1001);
		category.setCategoryName("Mobile-Iphone");
		category.setCategoryDesc("High end mobile phones");
		
		assertTrue("Problem in inserting category",categoryDAO.addCategory(category));
	}
	@Ignore
	@Test
	public void updateCategoryTest()
	{
		Category category=(Category)categoryDAO.getCategory(1001);
		category.setCategoryDesc("All Samsung Mobiles with 4G and AI camera");
		//assertNotNull("Problem in Null Category",category);
		
		System.out.println("Category Id: "+category.getCategoryId());
		System.out.println("Category Name: "+category.getCategoryName());
		
		assertTrue("Problem in updating category",categoryDAO.updateCategory(category));
	}
	@Ignore
	@Test
	public void retrieveCategoriesTest()
	{
		List<Category> categoryList=(List<Category>)categoryDAO.retrieveCategories();
		
		assertTrue("Problem in retrieving categories",categoryList.size()>0);
		
		for(Category category:categoryList)
		{
			System.out.println(category);
		}
	}
	
	@Test
	public void deleteCategoryTest()
	{
		Category category=(Category)categoryDAO.getCategory(1004);
		
		assertTrue("Problem in deleting category", categoryDAO.deleteCategory(category));
		
	}
}
