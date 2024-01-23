package kr.co.ac.service.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ac.dao.users.UsersDao;
import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVO;

@Service
public class UsersServiceImpl implements UsersService {
	
	@Autowired
	UsersDao usersdao;

	@Override
	public void SingUp(UsersVO item) {
		usersdao.singup(item);
	}

	@Override
	public List<UsersVO> selectUsersList(Pager pager) {
		int total = usersdao.total(pager);
		return usersdao.userslist(pager);
	}

	@Override
	public UsersVO item(Long uNO) {
		return usersdao.item(uNO);
	}

	@Override
	public void update(UsersVO item) {
		usersdao.update(item);
	}

	@Override
	public void delete(Long uNO) {
		usersdao.delete(uNO);
	}

	@Override
	public List<UsersVO> selectUsersListAll(UsersVO usersVO) {
		return usersdao.usersListAll(usersVO);
	}

}
