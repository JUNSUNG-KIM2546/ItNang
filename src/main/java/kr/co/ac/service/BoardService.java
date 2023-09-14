package kr.co.ac.service;

import java.util.List;

import kr.co.ac.vo.BoardVo;

public interface BoardService {

	List<BoardVo> selectBoardList();

	void add(BoardVo item);

	BoardVo item(Long boardId);

	void update(BoardVo item);

	void delete(Long boardId);

}
