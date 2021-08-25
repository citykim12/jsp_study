package com.site.p0819.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.site.p0819.vo.EventVo;

@Mapper
public interface EventMapper {

	List<EventVo> selectEvent_view(int bid);

	int insertComment(EventVo eventVo);

	EventVo selectCommentOne(int cno);

	int selectCommentCount(EventVo eventVo);

}
