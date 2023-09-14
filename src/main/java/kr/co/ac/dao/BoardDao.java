package kr.co.ac.dao;

import java.util.List;

import kr.co.ac.vo.BoardVo;

public interface BoardDao {

	void add(BoardVo item);

	BoardVo item(Long boardId);

	void update(BoardVo item);

	void delete(Long boardId);

	List<BoardVo> boardlist();

}
