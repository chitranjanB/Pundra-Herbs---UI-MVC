package com.pundraherbs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pundraherbs.model.OrderInfo;
import com.pundraherbs.service.IOrderService;

@Controller
public class OrderController {

	@Autowired
	IOrderService orderService;

	@RequestMapping(value = "/orders/users/{userId}", method = RequestMethod.GET)
	public String getOrdersByUser(@PathVariable(value = "userId") Long userId, ModelMap model) {
		List<OrderInfo> orderList = orderService.getOrdersByUserId(userId);
		model.addAttribute("orders", orderList);
		return "orders";
	}

}
