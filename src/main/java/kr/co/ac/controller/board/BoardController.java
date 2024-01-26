package kr.co.ac.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ac.controller.login.LoginController;
import kr.co.ac.pager.Pager;
import kr.co.ac.service.board.BoardService;
import kr.co.ac.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	final String crud = "crud/";
	final String path = "board/";
	//private static final Logger logger = LoggerFactory.getLogger(LoginController.class); 
	@Autowired
	BoardService boardservice;
	
	// 자유게시판
	@GetMapping("/list")
	String boardlist(BoardVO  boardVo, Model model, Pager pager) {
		
		List<BoardVO> boardlist = boardservice.selectBoardList(pager);
		model.addAttribute("boardlist", boardlist);
		//logger.debug("log", boardlist);

		return crud + path + "list";
	}
	
	// 자유게시판 등록
	@GetMapping("/add")
	String boardadd( ) {
		return crud + path + "add";
	}
	@PostMapping("/add")
	String boardadd(BoardVO item, HttpServletRequest request) {
		item.setBoardIp(request.getRemoteAddr());	// 게시글 작성한 컴퓨터 ip
		boardservice.add(item);
		return "redirect:/board/list";
		//리다이렉트
	}
	
	// 자유게시판 업데이트
	@GetMapping("/update/{boardId}")
	String boardupdate(@PathVariable Long boardId, Model model) {
		BoardVO item = boardservice.item(boardId);
		
		model.addAttribute("item",item);
		
		return crud + path + "update";
	}
	@PostMapping("/update/{boardId}")
	String boardupdate(@PathVariable Long boardId, BoardVO item) {
		item.setBoardId(boardId);
		
		boardservice.update(item);
		
		return "redirect:/board/list";
		//book/update/13 -> "redirect:list" -> /book/update/list
	}
		
	// 자유게시판 삭제
	@GetMapping("/delete/{boardId}")
	String boarddelete(@PathVariable Long boardId) {
		boardservice.delete(boardId);
			
		return "redirect:/board/list";
	}

}
