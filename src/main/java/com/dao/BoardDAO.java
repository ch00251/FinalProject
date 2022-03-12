package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.BoardDTO;

@Repository
public class BoardDAO {
	@Autowired
	SqlSessionTemplate template;

	public List<BoardDTO> boardList(BoardDTO dto) {
		// TODO Auto-generated method stub
		return template.selectList("BoardMapper.boardList", dto);
	}

	public BoardDTO boardRetrieve(int num) {
		// TODO Auto-generated method stub
		return template.selectOne("BoardMapper.boardRetrieve", num);
	}
	
}
