package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.dto.BoardDTO;

@Service
public class BoardService {
	@Autowired
	BoardDAO dao;

	public List<BoardDTO> boardList(BoardDTO dto) {
		// TODO Auto-generated method stub
		return dao.boardList(dto);
	}

	public BoardDTO boardRetrieve(int num) {
		// TODO Auto-generated method stub
		return dao.boardRetrieve(num);
	}

	public int addViewCount(int num) {
		// TODO Auto-generated method stub
		return dao.addViewCount(num);
	}

	public void boardInsert(BoardDTO dto) {
		// TODO Auto-generated method stub
		System.out.println(dao);
		dao.boardInsert(dto);
	}

	public void boardUpdate(BoardDTO dto) {
		// TODO Auto-generated method stub
		dao.boardUpdate(dto);
	}
	
}
