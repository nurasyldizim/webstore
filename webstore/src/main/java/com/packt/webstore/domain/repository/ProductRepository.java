package com.packt.webstore.domain.repository;

import java.util.List;
import java.util.Map;

import com.packt.webstore.domain.Product;

public interface ProductRepository {
	List<Product> getAllProducts();

	void updateStock(String productId, long noOfUnits);

	List<Product> getProductsByCategory(String category);

	List<Product> getProductsByFilter(Map<String, List<String>> filterParams);

	Product getProductById(String productID);

	List<Product> getFilterProducts(String category, String brand, String low, String high);

	void addProduct(Product product);
}