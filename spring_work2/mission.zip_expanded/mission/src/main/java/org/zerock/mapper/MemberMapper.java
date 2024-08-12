package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.MemberVO;

public interface MemberMapper {
	public void join(MemberVO member);
	public MemberVO login(@Param("userId") String userId, @Param("password") String password);
}
