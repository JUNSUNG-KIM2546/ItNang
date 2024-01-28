package kr.co.ac.dao.file;

import kr.co.ac.vo.UsersFileVO;

public interface UsersFileDao {

	void fileAdd(UsersFileVO file);

	void fileDelete(Long uNo);

}
