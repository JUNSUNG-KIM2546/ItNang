package kr.co.ac.dao.users;

import java.util.LinkedHashMap;
import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVO;

public interface UsersDao {

	void singup(UsersVO item);

	List<UsersVO> userslist(Pager pager);

	UsersVO item(Long uNO);

	void update(UsersVO item);

	void delete(Long uNO);

	int total(Pager pager);

	List<UsersVO> usersListAll(UsersVO usersVO);

	List<LinkedHashMap<String, Object>> selectUsersListExcel(UsersVO usersVO);

}
