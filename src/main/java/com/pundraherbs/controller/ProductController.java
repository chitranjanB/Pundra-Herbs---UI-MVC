package com.pundraherbs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pundraherbs.model.ProductInfo;
import com.pundraherbs.model.ReviewInfo;
import com.pundraherbs.service.IProductService;

@Controller
public class ProductController {

	@Autowired
	IProductService productService;

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String getProducts(ModelMap model) {
		List<ProductInfo> productList = productService.getAllProducts();
		model.addAttribute("productList", productList);
		return "products";
	}

	@RequestMapping(value = "/products/{productId}", method = RequestMethod.GET)
	public String getProduct(@PathVariable(value = "productId") Long productId, ModelMap model) {
		ProductInfo product = productService.getProduct(productId);
		model.addAttribute("product", product);
		return "product";
	}

	@RequestMapping(value = "/products/{productId}/review", method = RequestMethod.GET)
	public String getProductReviews(@PathVariable(value = "productId") Long productId, ModelMap model) {
		ProductInfo product = productService.getProduct(productId);
		model.addAttribute("product", product);
		return "productReview";
	}
	
	@RequestMapping(value = "/products/{productId}/review", method = RequestMethod.POST)
	public String reviewProduct(@PathVariable(value = "productId") Long productId, @RequestBody ReviewInfo reviewInfo, ModelMap model) {
		productService.reviewProduct(productId, reviewInfo);
		ProductInfo product = productService.getProduct(productId);
		model.addAttribute("product", product);
		return "productReview";
	}

}
