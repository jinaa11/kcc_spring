package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.CartVO;

public interface CartMapper {
	public void addCart(CartVO cart);
	public List<CartVO> getCart(String userId);
	public CartVO getCartByProduct(@Param("userId") String userId, @Param("productId") int productId);
	public void updateCart(@Param("cartItemId") int cartItemId, @Param("quantity") int quantity);
	public void deleteCart(int cartItemId);
}
