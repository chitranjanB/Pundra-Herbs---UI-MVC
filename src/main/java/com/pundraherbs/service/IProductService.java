package com.pundraherbs.service;

import java.util.List;

import com.pundraherbs.model.Product;

public interface IProductService {
	public List<Product> getAllProducts();

	public Product getProduct(Long productId);
}
