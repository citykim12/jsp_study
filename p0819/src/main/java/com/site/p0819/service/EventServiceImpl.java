package com.site.p0819.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0819.mapper.EventMapper;
import com.site.p0819.vo.EventVo;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	EventMapper eventMapper;
	
	@Override  // 댓글리스트
	public List<EventVo> selectEvent_view(int bid) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<EventVo> list = eventMapper.selectEvent_view(bid);
		return list;
	}

	@Override  // 댓글추가 후 댓글1개 select
	public Map<String, Object> insertComment(EventVo eventVo) {
		Map<String, Object> map = new HashMap<String, Object>();
		// insert후 cno를 받아옴.
		eventMapper.insertComment(eventVo);
		// int cno 데이터를 받으면 안됨, insert 리턴값은 1성공, -1 실패
		System.out.println("eventVo.cno : "+eventVo.getCno());
		int count = eventMapper.selectCommentCount(eventVo);
		EventVo eventVo2 = eventMapper.selectCommentOne(eventVo.getCno());
		map.put("eventVo",eventVo2);
		map.put("count",count);
		
		return map;
	}

}
