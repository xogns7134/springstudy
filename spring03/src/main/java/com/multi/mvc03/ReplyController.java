package com.multi.mvc03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {

	@Autowired
	ReplyDAO replyDAO; // 이름을 이런식으로 하면 자동으로 model로 넘어감
	
	@RequestMapping("insert2")
	public void insert2(ReplyDTO replyDTO, Model model) {
		System.out.println(replyDTO);
		int result = replyDAO.insert(replyDTO);
		System.out.println("reply insert 결과 >> " + result);
		model.addAttribute("result", result);
	}
}
