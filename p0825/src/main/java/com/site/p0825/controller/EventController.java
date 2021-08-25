package com.site.p0825.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.site.p0825.service.EventService;
import com.site.p0825.vo.EventVo;

@Controller
public class EventController {
	
	@Autowired
	EventService eventService;
	
	//이벤트 뷰페이지
	@RequestMapping("event_view")
	public String event_view(Model model) {
		Map<String, Object> map = eventService.selectCommentAll();
		model.addAttribute("map",map);
		return "/event/event_view";
	}
	
	
	//댓글추가
	@RequestMapping("commentWrite")
	@ResponseBody
	public EventVo commentWrite(EventVo eventVo) {
		EventVo insertEventVo = eventService.insertCommentWrite(eventVo);
		return insertEventVo;
	}
	
	//댓글수정
	@RequestMapping("commentModify")
	@ResponseBody
	public EventVo commentModify(EventVo eventVo) {
		EventVo updateEventVo = eventService.updateCommentModify(eventVo);
		return updateEventVo;
	}
	
	
	

}
