package kr.co.ac.dao;

import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.BoardVo;

public interface BoardDao {
	
	List<BoardVo> boardlist(Pager pager);

	void add(BoardVo item);

	BoardVo item(Long boardId);

	void update(BoardVo item);

	void delete(Long boardId);

	int total(Pager pager);

}
