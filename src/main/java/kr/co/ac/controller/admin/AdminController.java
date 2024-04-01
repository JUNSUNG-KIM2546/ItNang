package kr.co.ac.controller.admin;

import java.io.ByteArrayInputStream;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.util.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.ac.common.ExcelUtil;
import kr.co.ac.pager.Pager;
import kr.co.ac.service.board.BoardService;
import kr.co.ac.service.file.UsersFileService;
import kr.co.ac.service.users.UsersService;
import kr.co.ac.vo.BoardVO;
import kr.co.ac.vo.UsersVO;

@Controller
@RequestMapping("/Admin")
public class AdminController {
	final String admin = "admin/";
	
	@Autowired
	UsersService usersservice;
	
	@Autowired
	BoardService boardservice;
	
	@Autowired
	UsersFileService fileservice;
	
	// 어드민대쉬보드
	@GetMapping("/Dashboard")
	String dashboard(Model model) {
		return admin + "AdminDashboard";
	}
	
	// 어드민 보드리스트
	@GetMapping("/BoardList")
	String boardlist(Model model, Pager pager) {
		List<BoardVO> boardlist = boardservice.selectBoardList(pager);
		model.addAttribute("boardlist", boardlist);
		return admin + "AdminBoardList";
	}
	
	// 회원리스트
	@GetMapping("/UsersList")
	String userslist(Model model, Pager pager) {
		List<UsersVO> userslist = usersservice.selectUsersList(pager);
		model.addAttribute("userslist", userslist);
		return admin + "AdminUlist";
	}
	// 회원리스트(데이터)
	@GetMapping("/UsersListAll")
	@ResponseBody
	List<UsersVO> userslistAll(UsersVO usersVO) {
		List<UsersVO> userslist = usersservice.selectUsersListAll(usersVO);
		return userslist;
	}
	// 회원리스트(엑셀다운로드)
	@RequestMapping(value="/UsersListExcel")
	public void listExcel(UsersVO usersVO, ModelMap model, HttpServletResponse response) throws Exception {

		List<LinkedHashMap<String, Object>> resultList = usersservice.selectUsersListExcel(usersVO);;

		response.setHeader("Content-Disposition", "attachment;filename=UsersListExcel.xls");
		/* MIME 타입 문제: application/octet-stream 대신 application/vnd.ms-excel을 사용해 보세요. 
		 일부 브라우저나 시스템에서는 MIME 타입에 따라 다르게 반응할 수 있습니다. */
		response.setContentType("application/octet-stream");

		List<String> header = Arrays.asList("uNo", "uId", "uNick", "uPass", "uNameuName", "uEmail", "uPhone", "registDate", "updateDate", "useAt");

		ByteArrayInputStream stream = ExcelUtil.createListToExcel(header, resultList);

		IOUtils.copy(stream, response.getOutputStream());
	}
	
	// 회원상세정보
	@GetMapping("/UserSelect{uNo}")
	String userselect(@PathVariable Long uNo, Model model) {
		UsersVO userselect = usersservice.item(uNo);
		model.addAttribute("userselect",userselect);
		return admin + "Uselect";
	}

	// 회원삭제하기
	@GetMapping("/UserDelete/{uNo}")
	String usersdelete(@PathVariable Long uNo) {
		fileservice.delete(uNo);
		usersservice.delete(uNo);
		return "redirect:/Admin/UsersList";
	}
}
