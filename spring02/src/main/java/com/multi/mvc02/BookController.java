package com.multi.mvc02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {

	@Autowired
	BookDAO dao;
	
	@RequestMapping("insert")
	public void insert(BookDTO dto, Model model) {
		int result = dao.insert(dto);
		model.addAttribute("result", result);
	}
	
	@RequestMapping("update")
	public void update(BookDTO dto, Model model) {
		int result = dao.update(dto);
		model.addAttribute("result", result);
	}
	
	@RequestMapping("delete")
	public void delete(BookDTO dto, Model model) {
		int result = dao.delete(dto);
		model.addAttribute("result", result);
	}
	
	@RequestMapping("one")
	public void one(BookDTO dto, Model model) {
		BookDTO result = dao.one(dto);
		model.addAttribute("one", result);
	}
	
	@RequestMapping("list")
	public void list(Model model) {
		List<BookDTO> list = dao.list();
		model.addAttribute("list", list);
	}
}