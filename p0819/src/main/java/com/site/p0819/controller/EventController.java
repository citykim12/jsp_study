package com.site.p0819.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.p0819.service.EventService;
import com.site.p0819.vo.EventVo;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@GetMapping("event_view")
	public String event_view(@RequestParam int bid,Model model) {
		// 게시글 1개
		// 이전글 1개
		// 다음글 1개
		// 댓글을 가져옴.
		List<EventVo> list = eventService.selectEvent_view(bid);
		//댓글개수
		int count = list.size();
		model.addAttribute("bid",bid);
		model.addAttribute("list",list);
		model.addAttribute("count",count);
		
		return "/event/event_view";
	}
	
	@RequestMapping("/insertComment")
	@ResponseBody
	public Map<String, Object> insertComment(EventVo eventVo) {
		//db에 데이터 저장
		Map<String, Object> map = eventService.insertComment(eventVo);
		return map;
	}
	
	
	

}
