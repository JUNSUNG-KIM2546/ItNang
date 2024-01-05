package kr.co.ac.dao.board;

import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.BoardVO;

public interface BoardDao {
	
	List<BoardVO> boardlist(Pager pager);

	void add(BoardVO item);

	BoardVO item(Long boardId);

	void update(BoardVO item);

	void delete(Long boardId);

	int total(Pager pager);

}
