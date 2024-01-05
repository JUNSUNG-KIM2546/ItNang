package kr.co.ac.dao.login;



import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ac.vo.UsersVO;

@Repository
public class LoginDaoImpl implements LoginDao {

	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(LoginDaoImpl.class);
	
	@Autowired
	SqlSession sql;
	
	@Override
	public UsersVO actionLogin(UsersVO userVO) {
		return sql.selectOne("login.actionLogin", userVO);
	}
}
