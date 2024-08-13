package org.zerock.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

// 공통 관심 사항
@Aspect
@Log4j
@Component
public class LogAdvice {
	// point cut 설정 (return 타입 무관, SampleService로 시작하는 모든 메서드 호출)
	@Before("execution(* org.zerock.service.SampleService*.*(..))")
	public void logBefore() {
		log.info("-----------------------------");
	}
}
