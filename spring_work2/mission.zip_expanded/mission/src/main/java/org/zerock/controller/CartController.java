package org.zerock.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.CartVO;
import org.zerock.service.CartService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/cart/*")
public class CartController {
	private CartService service;

	@GetMapping("/productList")
	public void productList(@ModelAttribute("userId") String userId, Model model) {
	    log.info("Received userId in productList: " + userId);  // 로그 확인
	    model.addAttribute("userId", userId);
	}


	@PostMapping("/addCart")
	public String addCart(@ModelAttribute CartVO cart, @RequestParam("userId") String userId) {
	    log.info("Received userId: " + userId);  // 로그 확인
	    log.info("CartVO: " + cart); // 로그로 CartVO의 내용을 확인합니다.
	    service.addCart(cart);
	    log.info(cart);
	    return "redirect:/cart/productList?userId=" + userId;  // 리다이렉트 시 userId 추가
	}

	@GetMapping("/myCart")
	public void cart(@RequestParam("userId") String userId, Model model) {
		List<CartVO> cartItems = service.getCart(userId);
		double totalAmount = cartItems.stream()
															.mapToDouble(item -> item.getQuantity() * item.getPrice())
															.sum();
		model.addAttribute("list", service.getCart(userId));
		model.addAttribute("totalAmount", totalAmount);
	}
	
	@PostMapping("/deleteCart")
	public String deleteCart(@RequestParam("cartItemId") int cartItemId, @RequestParam("userId") String userId ) {
		service.deleteCart(cartItemId);
		return "redirect:/cart/myCart?userId=" + userId;
	}
	
}
