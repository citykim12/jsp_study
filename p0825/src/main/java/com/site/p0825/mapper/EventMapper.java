package com.site.p0825.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.p0825.vo.EventVo;

@Mapper
public interface EventMapper {

	// 댓글 전체 리스트
	List<EventVo> selectCommentAll();

	// 댓글 총 개수
	int selectCommentCount();

	// 댓글 추가
	int insertCommentWrite(EventVo eventVo);

	// 댓글 1개 리스트
	EventVo selectCommentWrite(int cno);

	// 댓글 수정
	void updateCommentModify(EventVo eventVo);

}
