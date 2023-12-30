package kr.co.ac.service;

import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVo;

public interface UsersService {

	void SingUp(UsersVo item);

	List<UsersVo> selectUsersList(Pager pager);

	UsersVo item(Long NO);

	void update(UsersVo item);

	void delete(Long NO);


}
