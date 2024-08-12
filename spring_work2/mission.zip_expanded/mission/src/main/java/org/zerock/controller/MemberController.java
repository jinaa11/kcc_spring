package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
@Log4j
public class MemberController {
	private MemberService service;

	@GetMapping("/join")
	public void join() {}

	@PostMapping("/join")
	public String join(MemberVO member, RedirectAttributes rttr) {
		try {
			service.join(member);
			rttr.addFlashAttribute("member", member);
			return "redirect:/member/joinSuccess";
		} catch (Exception e) {
			log.error("회원가입 실패: " + e.getMessage());
			return "redirect:/member/joinFailure";
		}
	}

	@GetMapping("/joinSuccess")
	public void joinSuccess() {}

	@GetMapping("/joinFailure")
	public void joinFailuer() {}

	@GetMapping("/login")
	public void login() {}

	@PostMapping("/login")
	public String login(String userId, String password, RedirectAttributes rttr) {
	    MemberVO member = service.login(userId, password);
	    
	    if (member != null) {
	        rttr.addFlashAttribute("userId", userId);
	        return "redirect:/cart/productList";
	    } else {
	        log.error("로그인 실패");
	        rttr.addFlashAttribute("loginError", true); // 로그인 실패 시 오류 플래그 설정
	        return "redirect:/member/login";
	    }
	}

}
