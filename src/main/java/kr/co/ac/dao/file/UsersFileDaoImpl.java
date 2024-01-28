package kr.co.ac.dao.file;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ac.vo.UsersFileVO;

@Repository
public class UsersFileDaoImpl implements UsersFileDao {
	@Autowired
	SqlSession sql;
	
	
	@Override
	public void fileAdd(UsersFileVO file) {
		sql.insert("usersfile.fileInsert", file);
	}


	@Override
	public void fileDelete(Long uNo) {
		sql.insert("usersfile.fileDelete", uNo);
	}

}
