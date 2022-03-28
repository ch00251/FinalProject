package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dto.MemberDTO;
import com.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	//마이페이지
	@RequestMapping(value = "/loginCheck/mypage")
	public String mypage(HttpSession session) {
		MemberDTO dto=(MemberDTO)session.getAttribute("login");
		String userid=dto.getUserid();
		dto=service.mypage(userid);
		System.out.println(dto);
		
		session.setAttribute("login", dto);
		return "redirect:../mypage";
	}
}
