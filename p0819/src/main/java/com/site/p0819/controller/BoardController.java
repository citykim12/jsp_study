package com.site.p0819.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.site.p0819.service.BoardService;
import com.site.p0819.vo.BoardVo;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("index")
	public String index() {
		return "/index";
	}
	
	
	
	// 다중업로드 글쓰기
	@GetMapping("testUpload")
	public String testUpload() {
		return "board/test_upload";
	}
	
	// 다중업로드 글쓰기
	@PostMapping("testUpload")
	public String testUpload(
			@RequestParam String bname,@RequestParam("files") List<MultipartFile> files
			,Model model) throws Exception {
		
		String[] uploadFileName=null;
		//파일이 첨부가 되어 있으면
		if(files.get(0).getSize() != 0) {
			//파일저장위치
			String fileUrl = "C:/workspace/p0819/src/main/resources/static/upload/";
			//파일이름 개수만큼 배열생성
			uploadFileName = new String[files.size()];
			
			//파일이름을 1개씩 가져옴.
			for(int i=0;i<files.size();i++) {
				String originFileName = files.get(i).getOriginalFilename(); //원본파일이름 저장
				long time = System.currentTimeMillis();
				//파일이름
				uploadFileName[i] = String.format("%d_%s", time,originFileName);
				//복사할 파일 - 예외발생 됨.
				File f = new File(fileUrl+uploadFileName[i]);
				//파일 업로드
				files.get(i).transferTo(f);
			}
			
		}
		
		model.addAttribute("bname",bname);
		model.addAttribute("uploadFileName",uploadFileName);
		return "board/test_upload2";
	}
	
	
	// 게시판 다중파일업로드
	@GetMapping("test_upload2")
	public String test_upload2() {
		return "board/test_upload2";
	}
	
	// 게시판 글쓰기
	@GetMapping("boardWrite")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	@PostMapping("boardWrite")
	public String boardWrite(BoardVo boardVo,@RequestPart MultipartFile file) throws Exception {
		
		//파일이 첨부가 되어 있으면
		if(file.getSize()!=0) {
			String originFileName = file.getOriginalFilename(); //원본파일이름 저장
			long time = System.currentTimeMillis();
			//파일이름
			String uploadFileName = String.format("%d_%s", time,originFileName);
			System.out.println("uploadFileName : " + uploadFileName);
			
			//파일저장위치
			String fileUrl = "C:/workspace/p0819/src/main/resources/static/upload/";
			System.out.println("fileUrl : " + fileUrl);
			//복사할 파일
			File f = new File(fileUrl+uploadFileName);
			//파일 업로드
			file.transferTo(f);
			
			//db에 저장하기 위해 vo에 파일이름을 저장시킴.
			boardVo.setBupload(uploadFileName);
		}
		
		boardService.insertBoardWrite(boardVo);
		return "redirect:/boardList";
	}
	
	// 게시판 리스트
	@RequestMapping("boardList")
	public String boardList(@RequestParam(value="page",defaultValue = "1") int page,
			@RequestParam @Nullable String category,@RequestParam @Nullable String searchWord,
			Model model) {
		//db에서 모든 게시물 가져옴
		Map<String, Object> map = boardService.selectBoardList(page,category,searchWord);
		model.addAttribute("map",map);
		System.out.println("c_category : "+map.get("category"));
		System.out.println("c_searchWord : "+map.get("searchWord"));
		return "/board/boardList";
	}
	
	// 게시판 리스트
	@RequestMapping("search")
	public String search(@RequestParam(value="page",defaultValue = "1") int page,
			@RequestParam String category,@RequestParam String searchWord,
			Model model) {
		//db에서 모든 게시물 가져옴
		Map<String, Object> map = boardService.selectSearch(page,category,searchWord);
		model.addAttribute("map",map);
		return "/board/boardList";
	}
	
	//게시판 뷰
	@RequestMapping("boardView")
	public String boardView(@RequestParam int bid,
			@RequestParam(value="page",defaultValue = "1") int page,Model model) {
		//db에서 게시글 1개 가져옴.
		BoardVo boardVo = boardService.selectBoardView(bid);
		//이전글
		BoardVo boardVoPre = boardService.selectBoardViewPre(bid);
		//다음글
		BoardVo boardVoNext = boardService.selectBoardViewNext(bid);
		model.addAttribute("page",page);
		model.addAttribute("boardVo",boardVo);
		model.addAttribute("boardVoPre",boardVoPre);
		model.addAttribute("boardVoNext",boardVoNext);
		return "/board/boardView";
	}
	
	//게시판 수정
	@GetMapping("boardModify")
	public String boardModify(@RequestParam int bid,
			@RequestParam(value="page",defaultValue = "1") int page,Model model) {
		//db에서 게시글 1개 가져옴.
		BoardVo boardVo = boardService.selectBoardView(bid);
		model.addAttribute("page",page);
		model.addAttribute("boardVo",boardVo);
		return "/board/boardModify";
	}
	
	@PostMapping("boardModify")
	public String boardModify(BoardVo boardVo,
			@RequestParam(value="page",defaultValue = "1") int page,
			@RequestPart MultipartFile file,@RequestParam String old_bupload
			,Model model) throws Exception {
		
		//파일이 첨부가 되어 있으면
		if(file.getSize()!=0) {
			String originFileName = file.getOriginalFilename(); //원본파일이름 저장
			long time = System.currentTimeMillis();
			//파일이름
			String uploadFileName = String.format("%d_%s", time,originFileName);
			System.out.println("uploadFileName : " + uploadFileName);
			
			//파일저장위치
			String fileUrl = "C:/workspace/p0819/src/main/resources/static/upload/";
			System.out.println("fileUrl : " + fileUrl);
			//복사할 파일
			File f = new File(fileUrl+uploadFileName);
			//파일 업로드
			file.transferTo(f);
			
			//db에 저장하기 위해 vo에 파일이름을 저장시킴.
			boardVo.setBupload(uploadFileName);
		}else {
			//파일첨부가 없을때 기존의 이름을 등록.
			boardVo.setBupload(old_bupload);
		}
		
		//db에서 게시글 1개 가져옴.
		int result = boardService.updateBoardModify(boardVo);
		return "redirect:/boardList?page="+page;
	}
	
	//게시판 답변달기
	@GetMapping("boardReply")
	public String boardReply(@RequestParam int bid,
		@RequestParam(value="page",defaultValue = "1") int page,Model model) {
		//db에서 게시글 1개 가져옴.
		BoardVo boardVo = boardService.selectBoardView(bid);
		model.addAttribute("page",page);
		model.addAttribute("boardVo",boardVo);
		return "/board/boardReply";
	}
	
	@PostMapping("boardReply")
	public String boardReply(BoardVo boardVo,
			@RequestParam int page,@RequestPart MultipartFile file
			,Model model) throws Exception {
		
		//파일이 첨부가 되어 있으면
		if(file.getSize()!=0) {
			String originFileName = file.getOriginalFilename(); //원본파일이름 저장
			long time = System.currentTimeMillis();
			//파일이름
			String uploadFileName = String.format("%d_%s", time,originFileName);
			System.out.println("uploadFileName : " + uploadFileName);
			
			//파일저장위치
			String fileUrl = "C:/workspace/p0819/src/main/resources/static/upload/";
			System.out.println("fileUrl : " + fileUrl);
			//복사할 파일
			File f = new File(fileUrl+uploadFileName);
			//파일 업로드
			file.transferTo(f);
			
			//db에 저장하기 위해 vo에 파일이름을 저장시킴.
			boardVo.setBupload(uploadFileName);
		}
		
		//db에서 게시글 1개 가져옴.
		boardService.insertBoardReply(boardVo);
		return "redirect:/boardList?page="+page;
	}
	
	
	
	//게시판 삭제
	@RequestMapping("boardDelete")
	public String boardDelete(@RequestParam int bid,
			@RequestParam(value="page",defaultValue = "1") int page) {
		
		boardService.deleteBoardDelete(bid);
		return "redirect:/boardList?page="+page;
	}
	
	
	
	
	
	
	

}
