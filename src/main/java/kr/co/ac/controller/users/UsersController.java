package kr.co.ac.controller.users;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.ac.pager.Pager;
import kr.co.ac.service.file.UsersFileService;
import kr.co.ac.service.users.UsersService;
import kr.co.ac.vo.UsersFileVO;
import kr.co.ac.vo.UsersVO;

@Controller
public class UsersController {
	final String users = "users/";
	
	private final String fileStorePath = "C:/sts-bundle/itnang-workspace/upload/users/";
	
	@Autowired
	UsersService usersservice;
	
	@Autowired
	UsersFileService fileservice;
		
	// 회원가입창(모달창)
	@GetMapping("/SignUps")
	String SingUp() {
		return users +  "SignUp";
	}
	@PostMapping("/SingUps")
	String SingUp(UsersVO item, UsersFileVO file, Model model) {
		usersservice.SingUp(item);
		file.setuNo(item.getuNo());
		fileservice.UfileAdd(file);
		
		return "redirect:/";
		//리다이렉트
	}
	
	// 회원리스트
	@GetMapping("/UsersList")
	String userslist(Model model, Pager pager) {
		List<UsersVO> userslist = usersservice.selectUsersList(pager);
		model.addAttribute("userslist", userslist);
		
		return users + "Ulist";
	}
	// 회원리스트(데이터)
	@GetMapping("/UsersListAll")
	@ResponseBody
	List<UsersVO> userslistAll(UsersVO usersVO) {
		
		List<UsersVO> userslist = usersservice.selectUsersListAll(usersVO);

		return userslist;
	}
	
	// 회원업데이트
	@GetMapping("/UserUpdate/{uNo}")
	String usersupdate(@PathVariable Long uNo, Model model) {
		UsersVO item = usersservice.item(uNo);
		
		model.addAttribute("item",item);
		
		return users + "Uupdate";
	}	
	@PostMapping("/UserUpdate/{uNo}")
	String usersupdate(@PathVariable Long uNo, UsersVO item, HttpSession session, HttpServletRequest request) throws Exception {
		item.setuNo(uNo);
		
		MultipartFile fileUpload = item.getUserUploadName();
		System.out.println(fileUpload.getOriginalFilename());
		
		if(fileUpload != null && !fileUpload.isEmpty()) {
			String file = fileUpload.getOriginalFilename();
			fileUpload.transferTo(new File(fileStorePath + file));	// 첨부파일을 유효한 위치로 옴기기
			
			item.setuImg("Y");
			item.setSaveName(item.getuNo() + item.getuNick() + FilenameUtils.getBaseName(fileUpload.getOriginalFilename()));	// 첨부파일 데이터베이스 저장명
			item.setFileName(FilenameUtils.getBaseName(fileUpload.getOriginalFilename()));	// 첨부파일 원본명
			item.setFilePath(fileStorePath);	// 첨부파일 업로드 경로
			item.setFileExt(FilenameUtils.getExtension(fileUpload.getOriginalFilename()));	// 첨부파일 확장자
			item.setFileSize(fileUpload.getSize());	// 프로필이미지 크기
		}
		
		usersservice.update(item); // 유저정보를 업데이트
		
		// 이전 페이지의 URL을 세션에 저장
		if(session.getAttribute("prevPage") == null) {
			String referrer = request.getHeader("Referer");
			request.getSession().setAttribute("prevPage", referrer);
		}
		
		// 로그인 성공 후, 이전 페이지의 URL을 가져옴
        String prevPage = (String) session.getAttribute("prevPage");
        
        if (prevPage != null && !prevPage.isEmpty()) {
            // 이전 페이지가 있는 경우 해당 페이지로 리다이렉트
            session.removeAttribute("prevPage"); // 세션에서 이전 페이지 URL 제거
            return "redirect:" + prevPage;
        } 
        else { 
        	// 이전 페이지가 없는 경우 기본 리다이렉트 URL 설정
            return "redirect:/";
        }
		
		//book/update/13 -> "redirect:list" -> /book/update/list
	}
	
	// 회원삭제
	@GetMapping("/UserDelete/{uNo}")
	String usersdelete(@PathVariable Long uNo) {
		usersservice.delete(uNo);
			
		return "redirect:../UsersList";
	}
	
}
