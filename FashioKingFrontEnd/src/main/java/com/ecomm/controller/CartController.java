package com.ecomm.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.Product;

@Controller
public class CartController {

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping("/addToCart/{productId}")
	public String addToCart(@PathVariable("productId")int productId, @RequestParam("qnty")int qnty, Model m, HttpSession session)
	{
		//String page="";
		Product product=productDAO.getProductById(productId);
		Cart cart=new Cart();
		cart.setProductId(product.getProductId());
		cart.setProductName(product.getProductName());
		cart.setQnty(qnty);
		double tPrice=qnty*product.getPrice();
		cart.setTotalPrice(tPrice);
		String username=(String) session.getAttribute("username");
		cart.setUsername(username);
		cart.setPaid("N");
		Date date = Calendar.getInstance().getTime();  
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
		String strDate = dateFormat.format(date);  
		cart.setTxdate(strDate);
		cart.getCartItemId();
		
		cartDAO.addCart(cart);
		/*m.addAttribute("cartItemId", cart.getCartItemId());
		m.addAttribute("productId", cart.getProductId());
		m.addAttribute("productName", cart.getProductName());
		m.addAttribute("qnty", cart.getQnty());
		m.addAttribute("totalPrice", cart.getTotalPrice());
		m.addAttribute("username", cart.getUsername());
		m.addAttribute("paid", cart.getPaid());
		m.addAttribute("txdate", cart.getTxdate());*/
		
		
		List<Cart> cartList=cartDAO.retrieveCart(username);
		/*if(cartList.contains(session.getAttribute("username")))
		{
			m.addAttribute("cartList", cartList);
		}*/
		
		m.addAttribute("cartList", cartList);
		
		//page="UserHome";
	
		return "Cart";
	}
	
	@RequestMapping("/deleteCart/{cartItemId}")
	public String deleteProduct(@PathVariable("cartItemId") int cartItemId,Model m,HttpSession session)
	{
		System.out.println("I am in delete cart controller");
		Cart cart=cartDAO.getCartbyId(cartItemId);
		
		cartDAO.deleteCart(cart);
		
		String username=(String)session.getAttribute("username");
		List<Cart> cartList=cartDAO.retrieveCart(username);
		m.addAttribute("cartList",cartList);
		return "Cart";
	}
	
	@RequestMapping("/checkout/{username}")
	public String checkout(@PathVariable("username") String username,Model m)
	{
		System.out.println("I am in checkout controller");
		List<Cart> cartList=cartDAO.retrieveCart(username);
		m.addAttribute("cartList",cartList);
		
		return "Checkout";
	}
	
	@RequestMapping("/receipt/{username}")
	public String receipt(@PathVariable("username") String username,Model m)
	{
		System.out.println("I am in receipt controller");
		List<Cart> cartList=cartDAO.retrievePaidCart(username);
		m.addAttribute("cartList",cartList);
		
		return "Receipt";
	}
	
	@RequestMapping("/updatecheckout/{username}")
//	public String updatecheckout(@PathVariable("username") String username,@RequestParam("cartList") List<Cart> cartList, Model m)
	public String updatecheckout(@PathVariable("username") String username,@RequestParam("cartItemId") int[] cartItemId, @RequestParam("paid") String[] paid, @RequestParam("payment") String[] payment, Model m)
	{
		System.out.println("I am in update checkout controller");
		
		ArrayList<Cart> cartList=new ArrayList<Cart>();
		
		for(int i=0;i<cartItemId.length;i++)
		{
			Cart cart=cartDAO.getCartbyId(cartItemId[i]);
			cart.setPaid(paid[i]);
			cart.setPayment(payment[i]);
			
			cartDAO.updateCart(cart);
			
			cartList.add(cart);			
		}
		
		
/*		List<Cart> cartList=null;
		
		for(Cart cart:cartList)
		{
			cart.setCartItemId(cart.getCartItemId());
			cart.setProductId(cart.getProductId());
			cart.setProductName(cart.getProductName());
			cart.setQnty(cart.getQnty());
			cart.setTotalPrice(cart.getTotalPrice());
			cart.setUsername(username);
			cart.setPaid(cart.getPaid());
			cart.setTxdate(cart.getTxdate());
			cart.setPayment(cart.getPayment());
			
			cartDAO.updateCart(cart);
			
		}*/
		//List<Cart> cartList2=cartDAO.retrievePaidCart(username);
		m.addAttribute("cartList",cartList);
	
		return "Receipt";
	}
}
