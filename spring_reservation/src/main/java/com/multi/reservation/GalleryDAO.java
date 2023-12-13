package com.multi.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GalleryDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	// 검색 목록
	public List<GalleryVO> searchGallery(String galleryName) {
		List<GalleryVO> searchGallery = my.selectList("gallery.searchGallery", galleryName);
		return searchGallery;
	}
	
	// 전체 목록
	public List<GalleryVO> listGallery() {
		List<GalleryVO> listGallery = my.selectList("gallery.listGallery");
		return listGallery;
	}
}