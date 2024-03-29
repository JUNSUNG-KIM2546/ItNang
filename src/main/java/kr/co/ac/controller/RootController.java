package kr.co.ac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {
	final String home = "home/";
	final String user = "user/";
	final String portfolio = "portfolio/";
	
	// 메인페이지
	@GetMapping("/")
	String home() {
		return home + "home";
	}
	
	// 포트폴리오 (portfolio)
	@GetMapping("/portfolio")
	String portfolio() {
		return portfolio + "portfolio";
	}
	
}
