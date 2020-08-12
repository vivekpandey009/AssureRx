package com.product;

import java.util.HashMap;
import java.util.List;



public interface ProductDAO {
	List<Product> getProduct();

	boolean addProduct(Product p);
	
	Product searchProduct(int id);
	
	List<Product> searchProductByName(String name);
	
	List<Product> searchProductByCategory(String category);
	
	boolean deleteProduct(int id);
	
	List<Product> getPriceByName(String name);
	
//	HashMap<String,Integer> getAll();

}
