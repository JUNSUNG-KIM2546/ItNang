package kr.co.ac.controller.boast;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.ac.service.boast.BoastService;
import kr.co.ac.service.file.BoastFileService;
import kr.co.ac.service.users.UsersService;
import kr.co.ac.vo.BoastFileVO;
import kr.co.ac.vo.BoastVO;
import kr.co.ac.vo.UsersVO;

@Controller
@RequestMapping("/boast")
public class BoastController {
	final String crud = "crud/";
	final String path = "boast/";

	private final String fileStorePath = "C:/sts-bundle/itnang-workspace/upload/boast/";
	
	//private static final Logger logger = LoggerFactory.getLogger(LoginController.class); 
	
	@Autowired
	BoastService boastservice;
	
	@Autowired
	UsersService usersservice;
	
	@Autowired
	BoastFileService fileservice;
	
	// 자랑게시판(뷰 페이지)
	@GetMapping("/list")
	String boastlist(UsersVO usersVO, BoastVO boastVO, Model model) {
		List<UsersVO> usersList = usersservice.selectUsersListAll(usersVO);
		List<BoastVO> boastList = boastservice.selectBoastList(boastVO);
		model.addAttribute("usersList", usersList);
		model.addAttribute("boastList", boastList);
		return crud + path + "list";
	}
	// 자랑게시판(뷰 데이터)
	@GetMapping("/listAll")
	@ResponseBody
	List<BoastVO> boastlistAll(BoastVO boastVO) {
		
		List<BoastVO> boastlist = boastservice.selectBoastList(boastVO);

		return boastlist;
	}
	
	// 자랑게시판 등록
	@GetMapping("{uNo}/add")
	String boardadd(@PathVariable Long uNo ) {
		return crud + path + "add";
	}
	@PostMapping("{uNo}/add")
	String boardadd(@PathVariable Long uNo, BoastVO item, BoastFileVO fileVO, HttpServletRequest request, final MultipartHttpServletRequest multiRequest) throws Exception {
		/*
		//매물사진 업로드처리
		List<FileVO> fileVOList = null;
		
        final Map<String, MultipartFile> files = multiRequest.getFileMap();
        if(!files.isEmpty()) {
        	fileVOList = fileUtil.parseFileInfo(files, uNo + "USER_", fileStorePath);
        }
    
        boastservice.add(item, fileVOList);
		
		return "redirect:/boast/list";
		*/
		item.setBoastIp(request.getRemoteAddr());	// 게시글 작성한 컴퓨터 ip
		boastservice.add(item);
		
		MultipartFile fileUpload = fileVO.getBoastUploadName();
		System.out.println(fileUpload.getOriginalFilename());
		
		if(fileUpload != null && !fileUpload.isEmpty()) {
			String file = fileUpload.getOriginalFilename();
			fileUpload.transferTo(new File(fileStorePath + file));	// 첨부파일을 유효한 위치로 옴기기
			
			fileVO.setuImg("Y");
			fileVO.setBoastSaveName(item.getBoastId() + "-" + FilenameUtils.getBaseName(fileUpload.getOriginalFilename()));	// 첨부파일 데이터베이스 저장명
			fileVO.setBoastFileName(FilenameUtils.getBaseName(fileUpload.getOriginalFilename()));	// 첨부파일 원본명
			fileVO.setBoastFilePath(fileStorePath);	// 첨부파일 업로드 경로
			fileVO.setBoastFileExt(FilenameUtils.getExtension(fileUpload.getOriginalFilename()));	// 첨부파일 확장자
			fileVO.setBoastFileSize(fileUpload.getSize());	// 프로필이미지 크기
		}
		
		fileVO.setBoastId(item.getBoastId());
		fileservice.add(fileVO);
		
		return "redirect:/boast/list";
	}
	
	// 자랑게시판 업데이트
	@GetMapping("/update/{boastId}")
	String boardupdate(@PathVariable Long boastId, Model model) {
		BoastVO item = boastservice.item(boastId);
		
		model.addAttribute("item",item);
		
		return crud + path + "update";
	}
	@PostMapping("/update/{boastId}")
	String boardupdate(@PathVariable Long boastId, BoastVO item) {
		item.setBoastId(boastId);
		
		boastservice.update(item);
		
		return "redirect:/boast/list";
		//book/update/13 -> "redirect:list" -> /book/update/list
	}
		
	// 자랑게시판 삭제
	@GetMapping("/delete/{boastId}")
	String boarddelete(@PathVariable Long boastId) {
		boastservice.delete(boastId);
			
		return "redirect:/boast/list";
	}

}
