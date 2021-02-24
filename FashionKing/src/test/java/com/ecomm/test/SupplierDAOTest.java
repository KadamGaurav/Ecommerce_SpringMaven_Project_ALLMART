package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Scanner;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Supplier;

public class SupplierDAOTest 
{
	static SupplierDAO supplierDAO;
	Scanner obj=new Scanner(System.in);
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		supplierDAO=(SupplierDAO)myContext.getBean("supplierDAO");
	}
	
	@Ignore
	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
		
		System.out.println("Please enter the Supplier ID:");
		supplier.setSupplierId(obj.nextInt());
		System.out.println("Please enter the Supplier Name:");
		supplier.setSupplierName(obj.next());
		System.out.println("Please enter the Supplier Address:");
		supplier.setSupplierAddr(obj.next());
		
		assertTrue("Problem in adding Supplier",supplierDAO.addSupplier(supplier));
	}
	
	@Ignore
	@Test
	public void deleteSupplierTest()
	{
		Supplier supplier=(Supplier)supplierDAO.getSupplier(1003);
		
		assertTrue("Problem in deleting supplier",supplierDAO.deleteSupplier(supplier));
		
	}
	
	@Ignore
	@Test
	public void updateSupplierTest()
	{
		System.out.print("Please enter Supplier ID of Supplier which needs to be updated:");
		Supplier supplier=(Supplier)supplierDAO.getSupplier(obj.nextInt());
		//supplier.setSupplierAddr("Surat");
		
		System.out.println("---------Options---------\r\n"
				+ "\r\n"
				+ "1. Update Supplier Name\r\n"
				+ "2. Update Supplier Address\r\n");
		
		char ch;
		
		do
		{
			System.out.println("Enter Your Choice :");
			ch=obj.next().charAt(0);
			
			switch(ch)
			{
				case '1':
					System.out.println("Update the Supplier Name");
					supplier.setSupplierName(obj.next());
					break;
				case '2':
					System.out.println("Updating the Supplier Address");
					supplier.setSupplierAddr(obj.next());
					break;
				default:
					System.out.println("===========Invalid Choice=========");
			}
			System.out.println("Do You Wish to Continue Y/N");
			ch=obj.next().charAt(0);
		}while(ch=='Y');
		
		assertTrue("Problem in updating Supplier",supplierDAO.updateSupplier(supplier));
		
	}
	
	@Ignore
	@Test
	public void getSupplierTest()
	{
		Supplier supplier=(Supplier)supplierDAO.getSupplier(1001);
		
		assertTrue("Problem in getting Supplier details",supplier!=null);
		
		System.out.print(supplier);
		
	}
	
	@Test
	public void retrieveSuppliersTest()
	{
		List<Supplier> supplierList=(List<Supplier>)supplierDAO.retrieveSuppliers();
		
		assertTrue("Problem in retrieving Supplier details",supplierList.size()>0);
		
		for(Supplier supplier:supplierList)
		{
			System.out.println(supplier);
		}
	}

}
