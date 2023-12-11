package com.multi.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExhibitionController {
	@RequestMapping("exhibition")
	public String oneExhibition(Model model) {
		// 전시 목록 선택 페이지 로직
		return "dateSelection"; // 날짜 선택 페이지로 이동
	}
}
