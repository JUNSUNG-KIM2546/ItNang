package kr.co.ac.service.users;

import java.util.LinkedHashMap;
import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVO;

public interface UsersService {
	
	/* 유저 회원가입 */
	void SingUp(UsersVO item);
	
	/* 유저리스트 목록 */
	List<UsersVO> selectUsersList(Pager pager);
	
	/* 유저 상세정보 */
	UsersVO item(Long uNO);
	
	/* 유저 업데이트 */
	void update(UsersVO item);
	
	/* 유저 삭제 */
	void delete(Long uNO);
	
	/* 유저리스트 JSON 데이터 */
	List<UsersVO> selectUsersListAll(UsersVO usersVO);
	
	/* 유저리스트 엑셀 다운로드 */
	List<LinkedHashMap<String, Object>> selectUsersListExcel(UsersVO usersVO);


}
