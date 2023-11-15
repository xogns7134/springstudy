package com.multi.mvc03;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDAO {
	@Autowired
	SqlSessionTemplate my;

	public List<TestDTO> fruit() {
		List<TestDTO> fruit = my.selectList("test.fruit");
		return fruit;
	}

	public List<TestDTO> travel() {
		List<TestDTO> travel = my.selectList("test.travel");
		return travel;
	}
}
