package com.site.p0825.service;

import java.util.List;
import java.util.Map;

import com.site.p0825.vo.EventVo;

public interface EventService {

	// 댓글 전체 리스트
	Map<String, Object> selectCommentAll();

	// 댓글추가
	EventVo insertCommentWrite(EventVo eventVo);

	// 댓글수정
	EventVo updateCommentModify(EventVo eventVo);

}
