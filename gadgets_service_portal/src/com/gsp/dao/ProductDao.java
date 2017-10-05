package com.gsp.dao;

import java.util.List;
import java.util.Set;

import com.gsp.pojos.Agent;
import com.gsp.pojos.Product;

public interface ProductDao {
	String addProduct(Product p);
	String removeProduct(Product p);
	String updateProduct(Product p);
	Set<String> getProductTypeByCompany(Agent a);
	Set<String> getModelsByType(String productType);
	Product getProductById(Integer id);
	List<Product> getProductByCompany(Agent a);
}
