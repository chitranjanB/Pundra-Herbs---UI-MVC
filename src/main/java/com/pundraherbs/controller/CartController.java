package com.pundraherbs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pundraherbs.model.CartInfo;
import com.pundraherbs.model.CartLineInfo;
import com.pundraherbs.model.ProductInfo;
import com.pundraherbs.service.IProductService;

@Controller
@RequestMapping(value = "cart")
public class CartController {

	@Autowired
	IProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "cart";
	}

	@RequestMapping(value = "buy/{id}", method = RequestMethod.GET)
	public String buy(@PathVariable("id") Long id, HttpSession session) {
		ProductInfo productInfo = new ProductInfo();
		if (session.getAttribute("cart") == null) {
			List<CartLineInfo> cart = new ArrayList<CartLineInfo>();

			CartLineInfo cartLineInfo = new CartLineInfo();
			cartLineInfo.setProduct(productService.getProduct(id));
			cartLineInfo.setQuantity(1);
			cart.add(cartLineInfo);

			session.setAttribute("cart", cart);
		} else {
			List<CartLineInfo> cart = (List<CartLineInfo>) session.getAttribute("cart");
			int index = exists(id, cart);
			if (index == -1) {
				CartLineInfo cartLineInfo = new CartLineInfo();
				cartLineInfo.setProduct(productService.getProduct(id));
				cartLineInfo.setQuantity(1);
				cart.add(cartLineInfo);
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart";
	}

	@RequestMapping(value = "remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") Long id, HttpSession session) {
		List<CartLineInfo> cart = (List<CartLineInfo>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/cart";
	}

	private int exists(Long id, List<CartLineInfo> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getProductId().equals(id)) {
				return i;
			}
		}
		return -1;
	}

}