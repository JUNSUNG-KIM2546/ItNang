package kr.co.ac.dao.users;

import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVO;

public interface UsersDao {

	void singup(UsersVO item);

	List<UsersVO> userslist(Pager pager);

	UsersVO item(Long NO);

	void update(UsersVO item);

	void delete(Long NO);

	int total(Pager pager);

}
