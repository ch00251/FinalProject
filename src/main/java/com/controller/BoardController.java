package com.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.BoardDTO;
import com.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	//게시판 리스트 보기
	@RequestMapping(value = "/boardList")
	public ModelAndView boardList(BoardDTO dto) {
		List<BoardDTO> list=service.boardList(dto);
		System.out.println("boardList:"+list);
		ModelAndView mav=new ModelAndView();
		mav.addObject("boardList", list);
		return mav;
	}

	//게시판글 상세보기
	@RequestMapping(value = "/boardRetrieve")
	@ModelAttribute("boardRetrieve")
	public BoardDTO boardRetrieve(@RequestParam("num") int num) {
		System.out.println(num);//상품번호 넘어오나 확인
		BoardDTO dto=service.boardRetrieve(num);
		System.out.println(dto);
		return dto;
	}
}
