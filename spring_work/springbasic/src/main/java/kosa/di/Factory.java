package kosa.di;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// xml 대신하는 용도 - 자바 파일로 대신할 수도 있음
// 설정 파일로 인지하여 사용
// @Configuration
public class Factory {
	@Bean
	// 메소드명 => ID명
	public Dao oracleDao() {
		// 스프링 컨테이너에서 관리됨
		return new OracleDao();
	}
	
	@Bean
	public Service writeService2() {
		return new WriteService();
	}
}
