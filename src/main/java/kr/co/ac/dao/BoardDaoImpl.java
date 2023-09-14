package kr.co.ac.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ac.vo.BoardVo;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<BoardVo> boardlist() {
		return sql.selectList("board.boardlist");
	}

	@Override
	public void add(BoardVo item) {
		sql.insert("board.boardadd", item);
	}

	@Override
	public BoardVo item(Long boardId) {
		return sql.selectOne("board.item", boardId);
	}

	@Override
	public void update(BoardVo item) {
		sql.update("board.boardupdate", item);
		
	}

	@Override
	public void delete(Long boardId) {
		sql.delete("board.boarddelete", boardId);
		
	}

}
