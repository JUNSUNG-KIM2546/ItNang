package kr.co.ac.dao.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<BoardVO> boardlist(Pager pager) {
		return sql.selectList("board.boardlist", pager);
	}

	@Override
	public void add(BoardVO item) {
		sql.insert("board.boardadd", item);
	}

	@Override
	public BoardVO item(Long boardId) {
		return sql.selectOne("board.item", boardId);
	}

	@Override
	public void update(BoardVO item) {
		sql.update("board.boardupdate", item);
		
	}

	@Override
	public void delete(Long boardId) {
		sql.delete("board.boarddelete", boardId);
		
	}
	
	@Override 
	public int total(Pager pager) {
		return sql.selectOne("board.total",pager); 
	}
	 
}
