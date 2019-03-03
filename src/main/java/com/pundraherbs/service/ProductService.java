package com.pundraherbs.service;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.pundraherbs.model.ProductInfo;
import com.pundraherbs.model.ReviewInfo;

@Service
public class ProductService implements IProductService {

	RestTemplate restTemplate = new RestTemplate();

	@Override
	public List<ProductInfo> getAllProducts() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<ProductInfo>> response = restTemplate.exchange("http://localhost:8081/products/", HttpMethod.GET, null,
				new ParameterizedTypeReference<List<ProductInfo>>() {
				});
		List<ProductInfo> products = response.getBody();
		return products;
	}

	@Override
	public ProductInfo getProduct(Long productId) {
		int pId = Integer.parseInt(productId.toString());
		ProductInfo product = restTemplate.getForObject("http://localhost:8081/products/" + pId, ProductInfo.class);
		return product;
	}

	@Override
	public void reviewProduct(Long productId, ReviewInfo reviewInfo) {
		final String uri = "http://localhost:8081/orders";
		restTemplate.postForObject(uri, reviewInfo, null);

	}

}
