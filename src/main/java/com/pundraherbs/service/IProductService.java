package com.pundraherbs.service;

import java.util.List;

import com.pundraherbs.model.ProductInfo;
import com.pundraherbs.model.ReviewInfo;

public interface IProductService {
	public List<ProductInfo> getAllProducts();

	public ProductInfo getProduct(Long productId);

	public void reviewProduct(Long productId, ReviewInfo reviewInfo);
}
