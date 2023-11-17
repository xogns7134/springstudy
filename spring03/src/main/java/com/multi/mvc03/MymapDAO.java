package com.multi.mvc03;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MymapDAO {

	@Autowired
	SqlSessionTemplate my;

	public MymapDTO one(String location) {
		return my.selectOne("mymap.one", location);
	}
	
	public List<MymapDTO> all() {
		return my.selectList("mymap.all");
	}
}
