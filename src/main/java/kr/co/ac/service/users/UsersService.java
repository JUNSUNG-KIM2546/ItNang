package kr.co.ac.service.users;

import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVO;

public interface UsersService {

	void SingUp(UsersVO item);

	List<UsersVO> selectUsersList(Pager pager);

	UsersVO item(Long NO);

	void update(UsersVO item);

	void delete(Long NO);


}
