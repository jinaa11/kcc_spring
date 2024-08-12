package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.CartVO;
import org.zerock.mapper.CartMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class CartServiceImpl implements CartService {
	private CartMapper mapper;
		
	@Override
	public void addCart(CartVO cart) {
		CartVO existingCartItem = mapper.getCartByProduct(cart.getUserId(), cart.getProductId());
		
		if(existingCartItem != null) {
			// 동일 상품이 있다면 수량 업데이트
			int newQty = existingCartItem.getQuantity() + cart.getQuantity();
			mapper.updateCart(existingCartItem.getCartItemId(), newQty);
		} else {
			// 동일 상품이 없다면 새로운 항목 추가
			mapper.addCart(cart );
		}
	}

	@Override
	public List<CartVO> getCart(String userId) {
		return mapper.getCart(userId);
	}

	@Override
	public CartVO getCartByProduct(String userId, int productId) {
		return mapper.getCartByProduct(userId, productId);
	}

	@Override
	public void updateCart(int cartItemId, int quantity) {
		mapper.updateCart(cartItemId, quantity);
	}

	@Override
	public void deleteCart(int cartItemId) {
		mapper.deleteCart(cartItemId); 
	}
	
}
