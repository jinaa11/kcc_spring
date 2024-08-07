package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// VO 객체(DB 데이터 값을 읽고 쓸 때 사용, 폼에서 넘어오는 객체) vs DTO 객체(계층 간 데이터 전달, 폼에 있는 데이터 값을 받음)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SampleDTO {
	private String name;
	private int age;
	
	
}
