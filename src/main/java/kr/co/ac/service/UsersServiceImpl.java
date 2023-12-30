package kr.co.ac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ac.dao.UsersDao;
import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVo;

@Service
public class UsersServiceImpl implements UsersService {
	
	@Autowired
	UsersDao usersdao;

	@Override
	public void SingUp(UsersVo item) {
		usersdao.singup(item);
	}

	@Override
	public List<UsersVo> selectUsersList(Pager pager) {
		int total = usersdao.total(pager);
		return usersdao.userslist(pager);
	}

	@Override
	public UsersVo item(Long NO) {
		return usersdao.item(NO);
	}

	@Override
	public void update(UsersVo item) {
		usersdao.update(item);
	}

	@Override
	public void delete(Long NO) {
		usersdao.delete(NO);
	}

}
