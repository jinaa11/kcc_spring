package org.zerock.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.CartVO;
import org.zerock.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTests {
	@Autowired
    private CartMapper mapper;

//    @Test
//    public void addCartTest() {
//    	CartVO cart = new CartVO();
//    	cart.setProductId(2);
//    	cart.setQuantity(2);
//    	cart.setUserId("jina");
//
//        mapper.addCart(cart);
//        log.info("cart: " + cart);
//    }
	
//	@Test
//	public void getCartTest() {
//		List<CartVO> cartList = mapper.getCart("jina");
//		log.info("카트 목록: " + cartList);
//	}
	
//	@Test
//	public void updateCartTest() {
//		String userId = "jina";
//		List<CartVO> cart = mapper.getCart(userId);
//		
//		if(cart != null && !cart.isEmpty()) {
//			for(CartVO cartItem : cart) {
//				int updateQty = cartItem.getQuantity() + 1;
//				
//				mapper.updateCart(cartItem.getCartItemId(), updateQty);
//				log.info("업데이트 결과: CartItemId=" + cartItem.getCartItemId() + ", Quantity=" + updateQty);
//			}
//		} else {
//			log.info("장바구니가 비어있습니다.");
//		}
//	}
	
	

}
