package org.zerock.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	@Autowired
	private MemberMapper mapper;
	
//	@Test
//	public void test() {
//		MemberVO member = new MemberVO();
//		member.setUserId("jina");
//		member.setPassword("1234");
//		member.setName("김진아");
//		member.setAge(29);
//		member.setAddress("서울시 송파구");
//		member.setPhone("010-4992-2047");
//		
//		mapper.join(member);
//		log.info(member);
//	}
	
	@Test
	public void loginTest() {
		String id = "jina";
		String password = "1234";
		
		MemberVO member = mapper.login(id, password);
		log.info("member: " + member);
		
		assertNotNull(member);
		assertEquals(id, member.getUserId());
		assertEquals(password, member.getPassword());
	}

}
