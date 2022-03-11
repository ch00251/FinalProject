package com.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.BoardDTO;
import com.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@RequestMapping(value = "/boardList")
	public ModelAndView boardList(BoardDTO dto) {
		List<BoardDTO> list=service.boardList(dto);
		System.out.println("boardList:"+list);
		ModelAndView mav=new ModelAndView();
		mav.addObject("boardList", list);
		return mav;
	}
}
