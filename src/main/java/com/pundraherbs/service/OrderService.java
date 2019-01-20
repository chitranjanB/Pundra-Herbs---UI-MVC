package com.pundraherbs.service;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.pundraherbs.model.CartInfo;
import com.pundraherbs.model.OrderInfo;

@Service
public class OrderService implements IOrderService {

	RestTemplate restTemplate = new RestTemplate();

	// admin method
	public List<OrderInfo> getAllOrders() {
		return null;

	}

	@Override
	public OrderInfo createOrder(CartInfo cart) {
		return null;

	}

	@Override
	public List<OrderInfo> getOrdersByUserId(Long userId) {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<OrderInfo>> response = restTemplate.exchange("http://localhost:8081/orders/users/" + userId, HttpMethod.GET,
				null, new ParameterizedTypeReference<List<OrderInfo>>() {
				});
		List<OrderInfo> orders = response.getBody();
		return orders;
	}

	// admin method
	@Override
	public List<OrderInfo> getPendingOrders() {
		return null;
	}

	@Override
	public List<OrderInfo> getPendingOrdersByUserId(Long userId) {
		return null;

	}

	// admin method
	@Override
	public OrderInfo getOrder(Long orderId) {
		return null;
	}
}
