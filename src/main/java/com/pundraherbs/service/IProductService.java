package com.pundraherbs.service;

import java.util.List;

import com.pundraherbs.model.ProductInfo;

public interface IProductService {
	public List<ProductInfo> getAllProducts();

	public ProductInfo getProduct(Long productId);
}
