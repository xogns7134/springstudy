package com.multi.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReservationController {
	
	@RequestMapping("reservation")
	public String reservation(@RequestParam int galleryID, Model model) {
		model.addAttribute("galleryID", galleryID);
		return "reservation";
	}
}
