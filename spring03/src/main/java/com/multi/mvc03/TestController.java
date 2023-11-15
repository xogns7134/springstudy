package com.multi.mvc03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@Autowired
	TestDAO dao;
	
	@RequestMapping("fruit")
	public void fruit(Model model) {
		List<TestDTO> fruit = dao.fruit();
		model.addAttribute("fruit", fruit);
	}
	
	@RequestMapping("travel")
	public void travel(Model model) {
		List<TestDTO> travel = dao.travel();
		model.addAttribute("travel", travel);
	}
}
