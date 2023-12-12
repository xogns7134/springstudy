package com.multi.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GalleryController {
	
	@Autowired
	GalleryDAO galleryDAO;
	
	@RequestMapping("oneGallery/{galleryID}")
	public void oneGallery(@PathVariable int galleryID, Model model) throws Exception {
		GalleryVO galleryVO = galleryDAO.oneGallery(galleryID);
		model.addAttribute("galleryVO", galleryVO);
	}
	
	@RequestMapping("listGallery")
	public void listGallery(Model model) throws Exception {
		List<GalleryVO> listGallery = galleryDAO.listGallery();
		model.addAttribute("listGallery", listGallery);
	}
}
