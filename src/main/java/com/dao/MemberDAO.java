package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;

@Repository
public class MemberDAO {
	@Autowired
	SqlSessionTemplate template;

	public MemberDTO login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return template.selectOne("MemberMapper.login", map);
	}
	
}
