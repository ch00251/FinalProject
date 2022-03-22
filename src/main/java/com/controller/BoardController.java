package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	//게시판 리스트 보기
	@RequestMapping(value = "/boardList")
	public ModelAndView boardList(BoardDTO dto, HttpServletRequest request) {
		HttpSession session=request.getSession();
		MemberDTO d=(MemberDTO)session.getAttribute("login");
		if(d!=null) {
			List<BoardDTO> list=service.boardList(dto);
			System.out.println("boardList:"+list);
			ModelAndView mav=new ModelAndView();
			mav.addObject("boardList", list);
			return mav;
		}else {
			session.setAttribute("mesg", "회원만 이용 가능합니다.");
			ModelAndView mav=new ModelAndView();
			mav.setViewName("loginForm");
			return mav;
		}
	}

	//게시판글 상세보기
	@RequestMapping(value = "/boardRetrieve")
	@ModelAttribute("boardRetrieve")
	public BoardDTO boardRetrieve(@RequestParam("num") int num) {
		System.out.println(num);//상품번호 넘어오나 확인
		BoardDTO dto=service.boardRetrieve(num);
		//조회수 1 증가시키기
		int n=service.addViewCount(num);
		System.out.println(dto);
		return dto;
	}
	
	//게시판 글 작성
	@RequestMapping(value = "/boardInsert")
	public String boardInsert(BoardDTO dto, HttpSession session) {
		service.boardInsert(dto);
		System.out.println("게시판 insert:"+dto);
		session.setAttribute("success", "등록되었습니다.");
		return "redirect:boardList";
	}
}
