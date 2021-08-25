package com.site.p0819.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.site.p0819.service.MemberService;
import com.site.p0819.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("login")
	public String login() {
		return "/login";
	}
	
	@PostMapping("login")
	public String login(@RequestParam String id,@RequestParam String pw, 
			HttpServletRequest request, Model model) {
		// session 설정하기 위해 선언
		HttpSession session = request.getSession();
		MemberVo memberVo = memberService.selectLogin(id,pw);
		if(memberVo != null) {
			session.setAttribute("session_flag", "success");
			session.setAttribute("session_id", memberVo.getId());
			session.setAttribute("session_nickname", memberVo.getNickname());
		}else {
			
			session.setAttribute("session_flag", "fail");
		}
		return "/loginOk";
	}
	
	@RequestMapping("logout")
	public String logout() {
		return "/logout";
	}
	
	
}
