package kr.co.ac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.ac.pager.Pager;
import kr.co.ac.service.UsersService;
import kr.co.ac.vo.UsersVo;

@Controller
public class SingupController {
	final String user = "user/";
	
	@Autowired
	UsersService usersservice;
		
	// 로그인창
	@GetMapping("/Logins")
	String Login() {
		return user + "Login";
	}
		
	// 회원가입창
	@GetMapping("/SingUps")
	String SingUp() {
		return user +  "SingUp";
	}
	@PostMapping("/SingUps")
	String SingUp(UsersVo item) {
		usersservice.SingUp(item);
		return "redirect:hello";
		//리다이렉트
	}
	
	// 회원리스트
	@GetMapping("/UsersList")
	String userslist(Model model, Pager pager) {
		List<UsersVo> userslist = usersservice.selectUsersList(pager);
		model.addAttribute("userslist", userslist);
		
		return user + "Ulist";
	}
	
	// 회원업데이트
	@GetMapping("/UserUpdate/{id}")
	String usersupdate(@PathVariable String id, Model model) {
		UsersVo item = usersservice.item(id);
		
		model.addAttribute("item",item);
		
		return user + "Uupdate";
	}	
	@PostMapping("/UserUpdate/{id}")
	String usersupdate(@PathVariable String id, UsersVo item) {
		item.setId(id);
		
		usersservice.update(item);
		
		return "redirect:../Ulist";
		//book/update/13 -> "redirect:list" -> /book/update/list
	}
	
	// 회원삭제
	@GetMapping("/UserDelete/{id}")
	String usersdelete(@PathVariable String id) {
		usersservice.delete(id);
			
		return "redirect:../Ulist";
	}
	
}
