package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.Cart;

public interface CartDAO {
	
	public boolean addCart(Cart cart);
	public boolean deleteCart(Cart cart);
	public boolean updateCart(Cart cart);
	public Cart getCartbyId(int cartItemId);
	public List<Cart> retrieveCart(String username);
	public List<Cart> retrievePaidCart(String username);

}
