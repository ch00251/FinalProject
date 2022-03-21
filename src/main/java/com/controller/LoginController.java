package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.MemberDTO;
import com.service.MemberService;

@Controller
public class LoginController {
	@Autowired
	MemberService service;
	
	//로그인
	@RequestMapping(value = "/login")
	public String login(@RequestParam Map<String, String> map, Model m, HttpSession session) {
		MemberDTO dto=service.login(map);
		String page="main";
		if(dto!=null) {
			session.setAttribute("login", dto);
			return page;
		}else {
			page="loginForm";
			m.addAttribute("mesg", "아이디 또는 비밀번호가 틀립니다.");
			return page;
		}
	}
	
	//로그아웃
	@RequestMapping(value = "/loginCheck/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../";//main.jsp로
	}
}
