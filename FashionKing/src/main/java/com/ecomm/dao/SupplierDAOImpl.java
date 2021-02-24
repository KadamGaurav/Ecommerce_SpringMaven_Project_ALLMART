package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Supplier;

@Repository("supplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addSupplier(Supplier supplier) 
	{
		try
		{
		sessionFactory.getCurrentSession().save(supplier);
		//Session session=sessionFactory.openSession();
		//System.out.println("Session created");
		//session.save(supplier);
		//session.close();
		System.out.println("Supplier added");
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception arised:"+e);
		return false;
		}
	}

	@Override
	public boolean deleteSupplier(Supplier supplier) 
	{
		try
		{
		sessionFactory.getCurrentSession().delete(supplier);
		return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	@Override
	public boolean updateSupplier(Supplier supplier) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	@Override
	public Supplier getSupplier(int supplierId) 
	{
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class, supplierId);
		session.close();
		return supplier;
	}

	@Override
	public List<Supplier> retrieveSuppliers() 
	{
		Session session=sessionFactory.openSession();
		List<Supplier> supplierList=(List<Supplier>)session.createQuery("from Supplier").list();
		session.close();
		return supplierList;
	}

}
