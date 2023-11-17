package com.multi.mvc03;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {

	@Autowired
	MymapDAO mymapDAO;
	
	@RequestMapping("string")
	@ResponseBody // controller에서 data를 return할 때(view를 만들 필요가 없음)
	public String name() {
		return "winner";
	}

	@RequestMapping("json1")
	@ResponseBody
	public BbsDTO json1() {
		BbsDTO bbsDTO = new BbsDTO();
		bbsDTO.setId(1);
		bbsDTO.setTitle("win");
		bbsDTO.setContent("win!!");
		bbsDTO.setWriter("apple");
		return bbsDTO;
	}

	@RequestMapping("json2")
	@ResponseBody
	public ArrayList<BbsDTO> json2() {
		ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
		for (int i = 0; i < 5; i++) {
			BbsDTO bbsDTO = new BbsDTO();
			bbsDTO.setId(i + 1);
			bbsDTO.setTitle("win" + (i + 1));
			bbsDTO.setContent("win!!" + (i + 1));
			bbsDTO.setWriter("apple");
			list.add(bbsDTO);
		}
		return list;
	}

	@RequestMapping("map1")
	@ResponseBody
	public MymapDTO kakaoMap() {
		MymapDTO map = new MymapDTO();
		map.setLat(37.511);
		map.setLon(127.059);
		return map;
	}
	
	@RequestMapping("map2")
	@ResponseBody
	public MymapDTO one(String location) {
		return mymapDAO.one(location);
	}
	
	@RequestMapping("map3")
	@ResponseBody
	public List<MymapDTO> all() {
		return mymapDAO.all();
	}
}
