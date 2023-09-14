package kr.co.ac.service;

import java.util.List;

import kr.co.ac.vo.UsersVo;

public interface UsersService {

	void SingUp(UsersVo item);

	List<UsersVo> selectUsersList();

	UsersVo item(String id);

	void update(UsersVo item);

	void delete(String id);


}
