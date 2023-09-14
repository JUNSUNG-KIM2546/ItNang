package kr.co.ac.dao;

import java.util.List;

import kr.co.ac.vo.UsersVo;

public interface UsersDao {

	void singup(UsersVo item);

	List<UsersVo> userslist();

	UsersVo item(String id);

	void update(UsersVo item);

	void delete(String id);

}
