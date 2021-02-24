package com.ecomm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;



@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/showProducts")
	public String showProducts(Model m)
	{
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList",productList);
		return "Product";
	}
	
	@RequestMapping("/ViewProducts")
	public String viewProducts(Model m)
	{
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList",productList);
		System.out.println(productList);
		return "ViewProducts";
	}

	@RequestMapping(value="/insertProduct", method=RequestMethod.POST)
	public String insertProduct(@RequestParam("productId")int productId,@RequestParam("productName") String productName,@RequestParam("productDesc") String productDesc,@RequestParam("price") double price,@RequestParam("stock") int stock,@RequestParam("categoryId") int categoryId,@RequestParam("supplierId") int supplierId,Model m)
	{
		Product product=new Product();
		product.setProductId(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setPrice(price);
		product.setStock(stock);
		product.setCategoryId(categoryId);
		product.setSupplierId(supplierId);
		productDAO.addProduct(product);

		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList",productList);
		return "Product";
	}
	
	@RequestMapping("/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId,Model m)
	{
		System.out.println("I am in delete product controller");
		Product product=productDAO.getProductById(productId);
		
		productDAO.deleteProduct(product);
		
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList",productList);
		return "Product";
	}
	
	@RequestMapping("/editProduct/{productId}")
	public String editProduct(@PathVariable("productId") int productId,Model m)
	{
		System.out.println("I am in edit product controller");
		Product product=productDAO.getProductById(productId);
		
		m.addAttribute("product",product);
		
		productDAO.updateProduct(product);
		
		return "UpdateProduct";
	}
	
	@RequestMapping(value="/updateProduct", method=RequestMethod.POST)
	public String updateProduct(@RequestParam("productId")int productId,@RequestParam("productName") String productName,@RequestParam("productDesc") String productDesc,@RequestParam("price") double price,@RequestParam("stock") int stock,@RequestParam("categoryId") int categoryId,@RequestParam("supplierId") int supplierId,Model m)
	{
		System.out.println("I am in the update product controller");
		Product product=new Product();
		product.setProductId(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setPrice(price);
		product.setStock(stock);
		product.setCategoryId(categoryId);
		product.setSupplierId(supplierId);
		
		productDAO.updateProduct(product);
		
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList",productList);
		return "Product";
		
	}
	
	@RequestMapping("/selectProduct/{productId}")
	public String selectProduct(@PathVariable("productId") int productId,Model m,HttpSession session)
	{
		System.out.println("I am in Show product specification controller");
		Product product=productDAO.getProductById(productId);
		
		m.addAttribute("product",product);
		session.setAttribute("productId", product.getProductId());
		
		return "ProductSpecification";
	}
}
