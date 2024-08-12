package org.zerock.service;

import java.util.List;

import org.zerock.domain.CartVO;

public interface CartService {
	public void addCart(CartVO cart);
	List<CartVO> getCart(String userId);
	// 특정 사용자의 장바구니에서 특정 상품 가져오기
	CartVO getCartByProduct(String userId, int productId);
	 public void updateCart(int cartItemId, int quantity);
	 public void deleteCart(int cartItemId);
}
