package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartVO {
	private int cartItemId;
	private String userId;
	private int productId;
	private int quantity;
	private String productName;
	private int price;
}
