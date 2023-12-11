package com.multi.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GalleryController {
	@RequestMapping("oneGallery")
	public String oneGallery(Model model) {
		// 미술관 선택 페이지 로직
		return "exhibitionSelection"; // 전시 목록 선택 페이지로 이동
	}
}
