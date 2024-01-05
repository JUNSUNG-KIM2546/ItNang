package kr.co.ac.dao.login;

import kr.co.ac.vo.UsersVO;

public interface LoginDao {
	
	//일반 로그인 처리
	UsersVO actionLogin(UsersVO userVO);

}
