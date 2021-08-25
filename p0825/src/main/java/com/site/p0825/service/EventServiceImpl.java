package com.site.p0825.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0825.mapper.EventMapper;
import com.site.p0825.vo.EventVo;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	EventMapper eventMapper;
	
	@Override //댓글 전체 리스트,댓글 총 개수
	public Map<String, Object> selectCommentAll() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<EventVo> list = eventMapper.selectCommentAll();
		int commentCount = eventMapper.selectCommentCount();
		map.put("list",list);
		map.put("commentCount",commentCount);
		
		return map;
	}

	@Override //댓글 추가
	public EventVo insertCommentWrite(EventVo eventVo) {
		eventMapper.insertCommentWrite(eventVo);
		eventVo.getCno(); //cno가 포함이 되어서 넘어옴.
		EventVo insertEventVo = eventMapper.selectCommentWrite(eventVo.getCno()); 
		return insertEventVo;
	}

	@Override //댓글 수정
	public EventVo updateCommentModify(EventVo eventVo) {
		eventMapper.updateCommentModify(eventVo);
		EventVo updateEventVo = eventMapper.selectCommentWrite(eventVo.getCno());
		return updateEventVo;
	}

}
