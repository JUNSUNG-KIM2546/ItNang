package kr.co.ac.service.login;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ac.dao.login.LoginDao;
import kr.co.ac.vo.UsersVO;

@Service
public class LoginServiceImpl implements LoginService {

	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(LoginServiceImpl.class);
	
	@Autowired
	private LoginDao dao;
	
	//일반 로그인 
	@Override
	public UsersVO actionLogin(UsersVO usersVO) {
		
		UsersVO loginVO = dao.actionLogin(usersVO);
		
		if(loginVO != null && !loginVO.getId().equals("") && !loginVO.getPass().equals(""))
		{
			return loginVO;
		}
		else {
			loginVO = new UsersVO();
		}
		
		return loginVO;
	}

}
