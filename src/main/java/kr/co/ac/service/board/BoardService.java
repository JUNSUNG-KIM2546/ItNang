package kr.co.ac.service.board;

import java.util.List;

import kr.co.ac.pager.Pager;
import kr.co.ac.vo.BoardVO;

public interface BoardService {

	List<BoardVO> selectBoardList(Pager pager);

	void add(BoardVO item);

	BoardVO item(Long boardId);

	void update(BoardVO item);

	void delete(Long boardId);

}
