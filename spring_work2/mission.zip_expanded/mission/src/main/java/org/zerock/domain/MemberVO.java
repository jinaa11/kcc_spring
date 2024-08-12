package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class MemberVO {
	private String userId;
	private String password;
	private String name;
	private int age;
	private String address;
	private String phone;
}
