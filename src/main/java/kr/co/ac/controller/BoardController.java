package kr.co.ac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ac.pager.Pager;
import kr.co.ac.service.BoardService;
import kr.co.ac.vo.BoardVo;

@Controller
@RequestMapping("/main")
public class BoardController {
	final String crud = "crud/";
	final String path = "board/";
	
	@Autowired
	BoardService boardservice;
	
	// 자유게시판
	@GetMapping("/board")
	String boardlist(BoardVo commVO, Model model, Pager pager) {
		// 공지 게시글
		commVO.setBoardAt("Y"); // 공지글
		// java.util.List
		List<BoardVo> noticeResultList = boardservice.selectBoardList(pager);
		model.addAttribute("noticeResultList", noticeResultList);

		commVO.setBoardAt("N"); // 일반게시글
		List<BoardVo> resultList = boardservice.selectBoardList(pager);
		model.addAttribute("resultList", resultList);
		
		List<BoardVo> boardlist = boardservice.selectBoardList(pager);
		model.addAttribute("boardlist", boardlist);

		return crud + path + "list";
	}
	
	// 자유게시판 등록
	@GetMapping("/add")
	String boardadd( ) {
		return crud + path + "add";
	}
	@PostMapping("/add")
	String boardadd(BoardVo item) {
		boardservice.add(item);
		return "redirect:/main/board";
		//리다이렉트
	}
	
	// 자유게시판 업데이트
	@GetMapping("/update/{boardId}")
	String boardupdate(@PathVariable Long boardId, Model model) {
		BoardVo item = boardservice.item(boardId);
		
		model.addAttribute("item",item);
		
		return crud + path + "update";
	}
	@PostMapping("/update/{boardId}")
	String boardupdate(@PathVariable Long boardId, BoardVo item) {
		item.setBoardId(boardId);
		
		boardservice.update(item);
		
		return "redirect:../board";
		//book/update/13 -> "redirect:list" -> /book/update/list
	}
		
	// 자유게시판 삭제
	@GetMapping("/delete/{boardId}")
	String boarddelete(@PathVariable Long boardId) {
		boardservice.delete(boardId);
			
		return "redirect:../board";
	}

}
