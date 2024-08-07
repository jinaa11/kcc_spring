package kosa.di;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

@org.springframework.stereotype.Service
public class WriteService implements Service {
	// data type을 기준으로 스프링 컨테이너에서 Dao 객체를 찾아서 주입
	@Autowired
	@Qualifier("mySQLDao") // 필요한 객체 이름을 정확하게 명시
	private Dao dao;
	
	public WriteService() {}
	
	public WriteService(Dao dao) {
		super();
		this.dao = dao;
	}

	public void insertService() {
		System.out.println("WriteService insertService() 호출");
		dao.insertBoard();
	}
	
	public void setDao(Dao dao) {
		this.dao = dao;
	}
}
