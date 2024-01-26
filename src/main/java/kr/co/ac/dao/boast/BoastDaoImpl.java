package kr.co.ac.dao.boast;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ac.vo.BoastVO;

@Repository
public class BoastDaoImpl implements BoastDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<BoastVO> selectBoastList(BoastVO boastVO) {
		return sql.selectList("boast.boastList",boastVO);
	}

	@Override
	public void add(BoastVO item) {
		sql.insert("boast.boastInsert", item);
	}

	@Override
	public BoastVO item(Long boastId) {
		return sql.selectOne("boast.boastItem", boastId);
	}

	@Override
	public void update(BoastVO item) {
		sql.update("boast.boastUpdate", item);
	}

	@Override
	public void delete(Long boastId) {
		sql.delete("boast.boastDelete", boastId);
	}

}
