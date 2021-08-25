package com.site.p0819.service;

import java.util.List;
import java.util.Map;

import com.site.p0819.vo.EventVo;

public interface EventService {

	List<EventVo> selectEvent_view(int bid);

	Map<String, Object> insertComment(EventVo eventVo);

}
