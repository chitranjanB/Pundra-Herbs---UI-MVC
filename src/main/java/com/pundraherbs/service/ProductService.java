package com.pundraherbs.service;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.pundraherbs.model.Product;

@Service
public class ProductService implements IProductService {

	RestTemplate restTemplate = new RestTemplate();

	@Override
	public List<Product> getAllProducts() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<Product>> response = restTemplate.exchange("http://localhost:8081/products/",
				HttpMethod.GET, null, new ParameterizedTypeReference<List<Product>>() {
				});
		List<Product> products = response.getBody();
		return products;
	}

	@Override
	public Product getProduct(Long productId) {
		int pId= Integer.parseInt(productId.toString());
		Product product = restTemplate.getForObject("http://localhost:8081/products/"+pId, Product.class);
		return product;
	}

}
