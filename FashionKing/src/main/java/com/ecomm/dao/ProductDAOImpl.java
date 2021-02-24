package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addProduct(Product product) {

		try {
			sessionFactory.getCurrentSession().save(product);
			// Session session=sessionFactory.openSession();
			// System.out.println("Session created");
			// session.save(product);
			// session.close();
			System.out.println("Product added");
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean deleteProduct(Product product) {
		try
		{
			sessionFactory.getCurrentSession().delete(product);
			System.out.println("Product deleted.");
			return true;
		}
		catch(Exception e)
		{
			return false;	
		}
	}

	@Override
	public boolean updateProduct(Product product) {
		try
		{
			sessionFactory.getCurrentSession().update(product);
			System.out.println("Product updated.");
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	@Override
	public Product getProductById(int productId) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, productId);
		session.close();
		return product;
	}

	@Override
	public List<Product> retrieveProducts() {
		Session session=sessionFactory.openSession();
		List<Product> productList=(List<Product>) session.createQuery("from Product").list();
		session.close();
		return productList;
	}

	@Override
	public List<Product> listProductsByCategory(int categoryId) {
		
		return null;
	}

	@Override
	public List<Product> listProductsBySupplier(int supplierId) {
		// TODO Auto-generated method stub
		return null;
	}

}
