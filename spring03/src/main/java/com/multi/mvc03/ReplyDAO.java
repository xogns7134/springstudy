package com.multi.mvc03;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {

	@Autowired
	SqlSessionTemplate my;//100
	
	
	public int insert(ReplyDTO dto) {
		return my.insert("reply.create", dto);
	}
	
	public List<ReplyDTO> list(int id) {
		return my.selectList("reply.list", id);
	}
}