package com.multi.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ExhibitionDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	// 특정 갤러리의 전시 목록 조회
	public List<ExhibitionVO> listExhibition(int galleryId) {
		List<ExhibitionVO> listExhibition = my.selectList("exhibition.listExhibition", galleryId);
		return listExhibition;
	}
}
