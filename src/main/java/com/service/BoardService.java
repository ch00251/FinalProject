package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;

@Service
public class BoardService {
	@Autowired
	BoardDAO dao;
	
}
