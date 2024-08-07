package kosa.di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class Main {
	public static void main(String[] args) {
		// Resource resource = new ClassPathResource("applicationContext.xml");
		
		// factory는 스프링 컨테이너
		// Beanfactory에 bean 등록시킴
		// BeanFactory factory = new GenericXmlApplicationContext(resource);
		
		// Factory 클래스로 스프링 컨테이너
		// ApplicationContext factory = new AnnotationConfigApplicationContext(Factory.class);
		
		String configuration[] = {
				"applicationContext.xml",
				"commonConcern.xml"
		};
		
		ApplicationContext factory = new ClassPathXmlApplicationContext(configuration);
		
		
		// Service service = (Service)factory.getBean("writeService");
		// 핵심 관심 사항
		//service.insertService();
		
		Kosa kosa = (Kosa)factory.getBean("kosaService");
		// Service로 끝나는 클래스, Service로 끝나는 메소드에 해당하면 공통 핵심 사항 실행
		kosa.insertService();
		// Service로 끝나는 클래스, Service로 끝나지 않는 메소드이기 때문에 공통 핵심 사항 실행되지 않음
		//kosa.list();
		
	}
}
