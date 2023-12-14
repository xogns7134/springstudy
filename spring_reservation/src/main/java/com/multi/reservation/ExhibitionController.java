package com.multi.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExhibitionController {
	
	@Autowired
	ExhibitionDAO exhibitionDAO;
	
	@RequestMapping("exhibitionSelection/{galleryId}")
	public String exhibitionSelection(@PathVariable int galleryId, Model model) {
		List<ExhibitionVO> listExhibition = exhibitionDAO.listExhibition(galleryId);
		model.addAttribute("listExhibition", listExhibition);
		return "exhibitionSelection";
	}
}
