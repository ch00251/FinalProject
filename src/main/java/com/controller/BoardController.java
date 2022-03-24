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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	//게시판 리스트 보기
	@RequestMapping(value = "/loginCheck/boardList")
	public String boardList(BoardDTO dto, RedirectAttributes attr) {//redirect시 데이터 유지를 위해 RedirectAttributes를 사용
		List<BoardDTO> list=service.boardList(dto);
		System.out.println("boardList:"+list);
		attr.addFlashAttribute("boardList", list);
		return "redirect:../boardList";
	}

	//게시판글 상세보기
	@RequestMapping(value = "/boardRetrieve")
	@ModelAttribute("boardRetrieve")
	public BoardDTO boardRetrieve(@RequestParam("num") int num, HttpSession session) {
		System.out.println(num);//상품번호 넘어오나 확인
		BoardDTO dto=service.boardRetrieve(num);
		session.setAttribute("board", dto);
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
	
	//게시판 글 수정
	@RequestMapping(value = "/loginCheck/boardUpdate")
	public String boardUpdate(BoardDTO dto, HttpSession session) {
		service.boardUpdate(dto);
		System.out.println("업데이트 내용:"+dto);
		session.setAttribute("update", "수정되었습니다.");
		return "redirect:../boardRetrieve?num="+dto.getNum();
	}
}
