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
    public String insert(BookDTO dto) {
        int result = dao.insert(dto);
        
        // result가 1이 아닌 경우 index.jsp로 redirect
        if (result != 1) {
            return "redirect:index.jsp";
        }
        
        return "insert";
    }
    
    @RequestMapping("update")
    public String update(BookDTO dto, Model model) {
        int result = dao.update(dto);
        
        // result가 1이 아닌 경우 index.jsp로 redirect
        if (result != 1) {
            return "redirect:index.jsp";
        }
        model.addAttribute("update", dto);
        return "update";
    }
    
    @RequestMapping("delete")
    public String delete(BookDTO dto) {
        int result = dao.delete(dto);
        
        // result가 1이 아닌 경우 index.jsp로 redirect
        if (result != 1) {
            return "redirect:index.jsp";
        }
        
        return "delete";
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