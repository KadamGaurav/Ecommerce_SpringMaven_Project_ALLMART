package com.ecomm.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Cart;

@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO
{
	@Autowired
	SessionFactory sessionFactory;
	

	@Override
	public boolean addCart(Cart cart) {
		try {
			sessionFactory.getCurrentSession().save(cart);
			 /*Session session=sessionFactory.openSession();
			 System.out.println("Session created");
			 session.save(cart);
			 session.close();*/
			System.out.println("Cart added");
			System.out.println(cart);
			return true;
		} catch (Exception e) {
			return false;
		}
	}


	@Override
	public boolean deleteCart(Cart cart) {
		try
		{
			sessionFactory.getCurrentSession().delete(cart);
			System.out.println("Cart deleted.");
			return true;
		}
		catch(Exception e)
		{
			return false;	
		}
	}

	@Override
	public boolean updateCart(Cart cart) {
		try {
			sessionFactory.getCurrentSession().update(cart);
			System.out.println("Cart updated");
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Cart getCartbyId(int cartItemId) {
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartItemId);
		session.close();
		return cart;
	}

	@Override
	public List<Cart> retrieveCart(String username) {
		Session session=sessionFactory.openSession();
		
		Query query=session.createQuery("from Cart where username=:username and paid='N'");
		//List<Cart> cartList=(List<Cart>) session.createQuery("from Cart where username=:username and paid='N'");
		query.setString("username", username);
		List<Cart> cartList=(List<Cart>)query.list();
		session.close();
		return cartList;
	}

	@Override
	public List<Cart> retrievePaidCart(String username) {
		Session session=sessionFactory.openSession();
		
		Query query=session.createQuery("from Cart where username=:username and paid='Y'");
		//List<Cart> cartList=(List<Cart>) session.createQuery("from Cart where username=:username and paid='N'");
		query.setString("username", username);
		List<Cart> cartList=(List<Cart>)query.list();
		session.close();
		return cartList;
	}

	

}
