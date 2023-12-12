package com.multi.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GalleryDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public GalleryVO oneGallery(int galleryID) {
		GalleryVO galleryVO = my.selectOne("gallery.oneGallery", galleryID);
		return galleryVO;
	}
	
	public List<GalleryVO> listGallery() {
		List<GalleryVO> listGallery = my.selectList("gallery.listGallery");
		return listGallery;
	}
}