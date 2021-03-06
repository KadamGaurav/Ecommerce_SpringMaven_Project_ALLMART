package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.Product;

public interface ProductDAO 
{
	public boolean addProduct(Product product);
	public boolean deleteProduct(Product product);
	public boolean updateProduct(Product product);
	public Product getProductById(int productId);
	public List<Product> retrieveProducts();
	public List<Product> listProductsByCategory(int categoryId);
	public List<Product> listProductsBySupplier(int supplierId);
}
