package com.pundraherbs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pundraherbs.exception.PundraBusinessException;
import com.pundraherbs.model.CartInfo;
import com.pundraherbs.model.CartLineInfo;
import com.pundraherbs.model.OrderInfo;
import com.pundraherbs.model.UserInfo;
import com.pundraherbs.service.IOrderService;
import com.pundraherbs.util.PundraUtils;

@Controller
@RequestMapping(value = "orders")
public class OrderController {

	@Autowired
	IOrderService orderService;

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public ModelAndView createOrder(HttpSession session, RedirectAttributes redirectAttributes) {
		ModelAndView modelAndView = new ModelAndView();
		List<CartLineInfo> listOfCartItems = (List<CartLineInfo>) session.getAttribute("cart");
		if (listOfCartItems != null && !listOfCartItems.isEmpty()) {
			CartInfo cartInfo = new CartInfo();
			cartInfo.setDetails(listOfCartItems);
			UserInfo userInfo = new UserInfo();
			userInfo.setUserId(PundraUtils.getLoggedInUserName());
			cartInfo.setUserInfo(userInfo);
			orderService.createOrder(cartInfo);
			redirectAttributes.addFlashAttribute("cartOrder", listOfCartItems);
			modelAndView.setViewName("redirect:/orders/orderConfirmation");
			session.setAttribute("cart", null);
		} else {
			throw new PundraBusinessException("There are no items in cart");
		}

		return modelAndView;
	}

	/**
	 * 
	 * This method is used justForRedirect
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "orderConfirmation", method = RequestMethod.GET)
	public String orderConfirmation(HttpSession session, ModelMap model) {
		return "orderConfirmation";
	}

	@RequestMapping(value = "users/{userId}", method = RequestMethod.GET)
	public String getAllOrdersByUser(@PathVariable(value = "userId") Long userId, ModelMap model) {
		List<OrderInfo> orderList = orderService.getOrdersByUserId(userId);
		if (orderList != null && !orderList.isEmpty()) {
			model.addAttribute("orders", orderList);
			model.addAttribute("userId", userId);
		}
		return "orders";
	}

	// TODO giving 404, while exchange rest data
	@RequestMapping(value = "pending/users/{userId}", method = RequestMethod.GET)
	public String getPendingOrdersByUser(@PathVariable(value = "userId") Long userId, ModelMap model) {
		List<OrderInfo> orderList = orderService.getPendingOrdersByUserId(userId);
		model.addAttribute("orders", orderList);
		return "pendingOrders";
	}

	@RequestMapping(value = "{orderId}/user/{userId}", method = RequestMethod.GET)
	public String getOrderByUser(@PathVariable(value = "orderId") Long orderId, @PathVariable(value = "userId") Long userId,
			ModelMap model) {
		OrderInfo myOrder = null;
		List<OrderInfo> orders = orderService.getOrdersByUserId(userId);
		for (OrderInfo order : orders) {
			if (order.getOrderId() == orderId) {
				myOrder = order;
			}
		}
		model.addAttribute("order", myOrder);
		return "order";
	}

}
