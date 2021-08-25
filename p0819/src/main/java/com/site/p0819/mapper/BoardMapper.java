package com.site.p0819.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.site.p0819.vo.BoardVo;

@Mapper
public interface BoardMapper {

	//게시판 리스트
	ArrayList<BoardVo> selectBoardList(int startrow, int endrow, String category, String searchWord);

	//게시판 검색리스트
	ArrayList<BoardVo> selectBoardSearch(int startrow, int endrow, String category, String searchWord);

	//게시판 총 개수
	int selectListCount(String category, String searchWord);
	
	//게시판 btitle검색 총 개수
	int selectSearchCount(String category,String searchWord);

	//게시판 뷰
	BoardVo selectBoardView(int bid);
	
	//게시판 이전글
	BoardVo selectBoardViewPre(int bid);
	//게시판 다음글
	BoardVo selectBoardViewNext(int bid);

	//게시판 수정
	int updateBoardModify(BoardVo boardVo);

	//게시판 삭제
	void deleteBoardDelete(int bid);

	//게시판 글쓰기
	void insertBoardWrite(BoardVo boardVo);
	
	//게시판 답변달기 bstep 1씩 증가
	void updateBoardReplyStepAdd(BoardVo boardVo);

	//게시판 답변달기
	void insertBoardReply(BoardVo boardVo);

	//조회수 1씩 증가
	void updateBhitAdd(int bid);

	

	


}
