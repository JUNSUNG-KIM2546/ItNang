package kr.co.ac.dao.file;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ac.vo.BoastFileVO;

@Repository
public class BoastFileDaoImpl implements BoastFileDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public void fileAdd(BoastFileVO fileVO) {
		sql.insert("boastfile.fileInsert", fileVO);
	}

}
