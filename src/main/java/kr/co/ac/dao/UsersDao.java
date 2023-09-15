package kr.co.ac.dao;

import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVo;

public interface UsersDao {

	void singup(UsersVo item);

	List<UsersVo> userslist(Pager pager);

	UsersVo item(String id);

	void update(UsersVo item);

	void delete(String id);

	int total(Pager pager);

}
