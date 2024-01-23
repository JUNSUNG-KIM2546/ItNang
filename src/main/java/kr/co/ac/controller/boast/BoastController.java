package kr.co.ac.controller.boast;

import java.util.List;
import java.util.Map;

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
import kr.co.ac.service.file.FileUtil;
import kr.co.ac.vo.BoastVO;
import kr.co.ac.vo.FileVO;

@Controller
@RequestMapping("/boast")
public class BoastController {
	final String crud = "crud/";
	final String path = "boast/";
	private final String fileStorePath = "C:/sts-bundle3/itnang_workwpace/upload";
	
	//private static final Logger logger = LoggerFactory.getLogger(LoginController.class); 
	
	@Autowired
	BoastService boastservice;
	
	//@Autowired
	//FileService fileservice;
  
	@Autowired
	FileUtil fileUtil;
	
	// 자랑게시판(뷰 페이지)
	@GetMapping("/list")
	String boastlist(BoastVO boastVo, Model model) {
		return crud + path + "list";
	}
	// 자랑게시판(뷰 데이터)
	@GetMapping("/listAll")
	@ResponseBody
	List<BoastVO> boastlistAll(BoastVO boastVo) {
		
		List<BoastVO> boastlist = boastservice.selectBoastList(boastVo);

		return boastlist;
	}
	
	// 자랑게시판 등록
	@GetMapping("{uNo}/add")
	String boardadd(@PathVariable Long uNo ) {
		return crud + path + "add";
	}
	@PostMapping("{uNo}/add")
	String boardadd(@PathVariable Long uNo, BoastVO item, final MultipartHttpServletRequest multiRequest) throws Exception {
		
		//매물사진 업로드처리
		List<FileVO> fileVOList = null;
		
        final Map<String, MultipartFile> files = multiRequest.getFileMap();
        if(!files.isEmpty()) {
        	fileVOList = fileUtil.parseFileInfo(files, uNo + "USER_", fileStorePath);
        }
    
        boastservice.add(item, fileVOList);
		
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
