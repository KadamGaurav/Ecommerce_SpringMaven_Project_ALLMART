package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Product;

public class ProductDAOTest 
{
	static ProductDAO productDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		productDAO=(ProductDAO)myContext.getBean("productDAO");
	}

	
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductId(0002);
		product.setProductName("Nokia 7700");
		product.setPrice(15000.0);
		product.setStock(250);
		product.setProductDesc("Mobile with 4G");
		product.setCategoryId(1002);
		
		assertTrue("Problem in inserting product",productDAO.addProduct(product));
	}
	
	@Test
	public void updateProductTest()
	{
		Product product=(Product)productDAO.getProductById(0001);
		product.setProductDesc("World's leading Jeans manufacturer");
		
		System.out.println("Product Id"+product.getProductId());
		System.out.println("Product desc"+product.getProductDesc());
		
		assertTrue("Problem in updating product",productDAO.updateProduct(product));
	}
	
	@Test
	public void retrieveProductsTest()
	{
		List<Product> productList=(List<Product>)productDAO.retrieveProducts();
		
		assertTrue("Problem in retrieving the list",productList.size()>0);
		
		for(Product product:productList)
		{
			System.out.println(product);
		}
	}
	
	@Test
	public void deleteProductTest()
	{
		Product product=(Product)productDAO.getProductById(0001);
		
		assertTrue("Problem in deleting product", productDAO.deleteProduct(product));
		
	}

}
