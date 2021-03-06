package com.pundraherbs.service;

import java.util.List;

import com.pundraherbs.model.CartInfo;
import com.pundraherbs.model.OrderInfo;

public interface IOrderService {
	public List<OrderInfo> getAllOrders();

	public OrderInfo createOrder(CartInfo cartInfo);

	public OrderInfo getOrder(Long orderId);

	public List<OrderInfo> getOrdersByUserId(Long userId);

	public List<OrderInfo> getPendingOrders();

	public List<OrderInfo> getPendingOrdersByUserId(Long userId);

	OrderInfo getOrderByUser(Long orderId, Long userId);

}
