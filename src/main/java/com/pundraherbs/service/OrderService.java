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

	@Override
	public OrderInfo createOrder(CartInfo cart) {
		final String uri = "http://localhost:8081/orders";
		OrderInfo response = restTemplate.postForObject(uri, cart, OrderInfo.class);
		return response;
	}

	@Override
	public List<OrderInfo> getOrdersByUserId(Long userId) {
		ResponseEntity<List<OrderInfo>> response = restTemplate.exchange("http://localhost:8081/orders/users/" + userId, HttpMethod.GET,
				null, new ParameterizedTypeReference<List<OrderInfo>>() {
				});
		List<OrderInfo> orders = response.getBody();
		return orders;
	}

	// TODO giving 404, while exchange rest data
	@Override
	public List<OrderInfo> getPendingOrdersByUserId(Long userId) {
		ResponseEntity<List<OrderInfo>> response = restTemplate.exchange("http://localhost:8081/orders/pending/users" + userId,
				HttpMethod.GET, null, new ParameterizedTypeReference<List<OrderInfo>>() {
				});
		List<OrderInfo> orders = response.getBody();
		return orders;

	}

	@Override
	public OrderInfo getOrderByUser(Long orderId, Long userId) {
		final String url = "http://localhost:8081/orders/" + orderId;
		OrderInfo order = restTemplate.getForObject(url, OrderInfo.class);
		return order;
	}

	// TODO admin method
	public List<OrderInfo> getAllOrders() {
		return null;

	}

	// TODO getPendingOrders admin method
	@Override
	public List<OrderInfo> getPendingOrders() {
		return null;
	}

	// TODO getOrder admin method
	@Override
	public OrderInfo getOrder(Long orderId) {
		return null;
	}
}
