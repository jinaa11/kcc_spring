package org.zerock.domain;

import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SampleVO {
	private Integer mno;
	private String firstName;
	private String lastName;
}
