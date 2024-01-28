package kr.co.ac.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.ac.service.login.LoginService;
import kr.co.ac.service.users.UsersService;
import kr.co.ac.vo.UsersVO;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class); 
	final String users = "users/";
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private UsersService usersService;


	//로그인 화면 
	@GetMapping("/logins")
	public String login(@ModelAttribute UsersVO usersVO, Model model, HttpSession session, HttpServletRequest request) {
		
		// 이전 페이지의 URL을 세션에 저장
		if(session.getAttribute("prevPage") == null) {
			String referrer = request.getHeader("Referer");
			request.getSession().setAttribute("prevPage", referrer);
		}
		
		return users + "Login";
	};

	/* 일반 회원 로그인 */
	@PostMapping("/actionLogin")
	public String actionLogin(@ModelAttribute UsersVO usersVO, Model model, HttpSession session, HttpServletResponse response) {
		
			// 일반 사용자 로그인
	        UsersVO loginVO = loginService.actionLogin(usersVO);
	        
	        // 로그인 성공 후, 이전 페이지의 URL을 가져옴
            String prevPage = (String) session.getAttribute("prevPage");
	        if (loginVO != null && loginVO.getuId() != null && !loginVO.getuId().equals("") && !loginVO.getuPhone().equals("kakao가입자")) {
	            session.setAttribute("loginVO", loginVO);
	            
	            if (loginVO.getUseAt().equals("A")) {
	            	// 어드민이면 어드민대쉬보드로 가라
	                return "redirect:/Admin/Dashboard";
				}
	            else if (prevPage != null && !prevPage.isEmpty()) {
	                // 이전 페이지가 있는 경우 해당 페이지로 리다이렉트
	                session.removeAttribute("prevPage"); // 세션에서 이전 페이지 URL 제거
	                return "redirect:" + prevPage;
	            } 
	            else { 
	            	// 이전 페이지가 없는 경우 기본 리다이렉트 URL 설정
	                return "redirect:/";
	            }
	        } 
	        else {
	            model.addAttribute("loginMessage", "로그인 정보가 올바르지 않습니다.");
				return "redirect:/login";
	    }
	}
	
	/* 카카오 로그인/회원가입 */
	@PostMapping("/kakaoLogin")
	public String kakaoMember(@ModelAttribute UsersVO usersVO, HttpServletRequest request, Model model, HttpSession session, HttpServletResponse response) {
		// userVO에 값이 있는지 확인
		usersVO.setuPass(usersVO.getuId());
		UsersVO loginVO = loginService.actionLogin(usersVO);
	    if (loginVO != null && loginVO.getuId() != null && !loginVO.getuId().equals("") && loginVO.getuPhone().equals("kakao가입자")) {
	        
	    	// 값이 있다면 로그인을 수행
	        if (loginVO.getuId() != null && loginVO.getuName() != null) {
	            session.setAttribute("loginVO", loginVO);
	           
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
	        }
	        else {
	            model.addAttribute("loginMessage", "로그인 정보가 올바르지 않습니다.");
	            return "redirect:/login";
	        }
	    } 
	    else {
	        // 값이 없다면 회원가입을 수행
	        UsersVO kakaovo = usersVO;
	        
	        kakaovo.setuId(usersVO.getuId());
	        kakaovo.setuNick(usersVO.getuId());
			kakaovo.setuPass(kakaovo.getuId());
			kakaovo.setuName(usersVO.getuName());
			kakaovo.setuEmail("kakao가입자");
			kakaovo.setuPhone("kakao가입자");
			usersService.SingUp(kakaovo);
			
	        session.setAttribute("loginVO", kakaovo);
	        
	        // 로그인 성공 후, 이전 페이지의 URL을 가져옴
            String prevPage = (String) session.getAttribute("prevPage");
            
            if (prevPage != null && !prevPage.isEmpty()) {
                // 이전 페이지가 있는 경우 해당 페이지로 리다이렉트
                session.removeAttribute("prevPage"); // 세션에서 이전 페이지 URL 제거
                return "redirect:" + prevPage;
            } else {
                // 이전 페이지가 없는 경우 기본 리다이렉트 URL 설정
                return "redirect:/";
            }
	    }
	}

	//로그아웃 처리
	@GetMapping("/actionLogout")
	public String actionLogout(Model model, HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
}
