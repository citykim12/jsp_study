package com.site.p0819.service;

import java.util.Map;

import com.site.p0819.vo.BoardVo;

public interface BoardService {

	//게시판 리스트
	Map<String, Object> selectBoardList(int page, String category, String searchWord);

	//게시판 뷰
	BoardVo selectBoardView(int bid);
	//이전글
	BoardVo selectBoardViewPre(int bid);
    //다음글
	BoardVo selectBoardViewNext(int bid);

	//게시판 수정
	int updateBoardModify(BoardVo boardVo);

	//게시판 삭제
	void deleteBoardDelete(int bid);

	//게시판 글쓰기
	void insertBoardWrite(BoardVo boardVo);

	//게시판 답변달기
	void insertBoardReply(BoardVo boardVo);

	//게시판 검색
	Map<String, Object> selectSearch(int page, String category, String searchWord);

	

}
