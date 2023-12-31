package kr.co.ac.dao.users;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.UsersVO;

@Repository
public class UsersDaoImpl implements UsersDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public void singup(UsersVO item) {
		sql.insert("users.singup", item);
	}

	@Override
	public List<UsersVO> userslist(Pager pager) {
		return sql.selectList("users.userslist", pager);
	}

	@Override
	public UsersVO item(Long NO) {
		return sql.selectOne("users.item", NO);
	}

	@Override
	public void update(UsersVO item) {
		sql.update("users.usersupdate", item);
	}

	@Override
	public void delete(Long NO) {
		sql.delete("users.usersdelete", NO);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("users.total", pager);
	}

}
