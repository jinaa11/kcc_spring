package kosa.di;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.util.StopWatch;

// 공통 관심 사항
public class LoggingAspect {
	// 핵심 관심 사항(insertService()) => 공통 관심 사항 함께 호출(핵심 관심 메서드 호출 시간을 측정)
	// 타이머 생성 -> 타이머 작동 -> 실제 메서드 호출 -> 타이머 종료 -> 로그 출력
	private Log log = LogFactory.getLog(getClass());

	// 공통 관심 메서드
	// 언제 호출(advice: around - 실행 전후 모두)
	public Object logging(ProceedingJoinPoint joinPoint) throws Throwable {
		log.info("로그 시작");
		// 타이머 생성
		StopWatch stopWatch = new StopWatch();

		try {
			// 타이머 시작
			stopWatch.start();
			// 실제 메서드 호출
			Object obj = joinPoint.proceed(); // insertService() 호출
			return obj;
		} catch (Exception e) {
			throw e;
		} finally {
			// 타이머 종료
			stopWatch.stop();
			// 로그 출력
			log.info(joinPoint.getSignature().getName() + " 메서드 실행 시: " 
					+ stopWatch.getTotalTimeMillis());
		}
	}
}
