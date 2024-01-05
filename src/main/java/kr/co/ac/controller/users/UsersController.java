package kr.co.ac.controller.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.ac.pager.Pager;
import kr.co.ac.service.users.UsersService;
import kr.co.ac.vo.UsersVO;

@Controller
public class UsersController {
	final String users = "users/";
	
	@Autowired
	UsersService usersservice;
		
	
	// 로그인창
	//@GetMapping("/Logins")
	//String Login() {
	//	return users + "Login";
	//}
	
		
	// 회원가입창(모달창)
	@GetMapping("/SignUps")
	String SingUp() {
		return users +  "SignUp";
	}
	@PostMapping("/SingUps")
	String SingUp(UsersVO item) {
		usersservice.SingUp(item);
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
	
	// 회원업데이트
	@GetMapping("/UserUpdate/{id}")
	String usersupdate(@PathVariable Long NO, Model model) {
		UsersVO item = usersservice.item(NO);
		
		model.addAttribute("item",item);
		
		return users + "Uupdate";
	}	
	@PostMapping("/UserUpdate/{id}")
	String usersupdate(@PathVariable Long NO, UsersVO item) {
		item.setNO(NO);
		
		usersservice.update(item);
		
		return "redirect:../Ulist";
		//book/update/13 -> "redirect:list" -> /book/update/list
	}
	
	// 회원삭제
	@GetMapping("/UserDelete/{id}")
	String usersdelete(@PathVariable Long NO) {
		usersservice.delete(NO);
			
		return "redirect:../Ulist";
	}
	
}
