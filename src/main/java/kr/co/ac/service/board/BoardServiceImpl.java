package kr.co.ac.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ac.dao.board.BoardDao;
import kr.co.ac.pager.Pager;
import kr.co.ac.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao boarddao;
	
	@Override
	public List<BoardVO> selectBoardList(Pager pager) {
		int total = boarddao.total(pager);
		pager.setTotal(total);
		return boarddao.boardlist(pager);
	}

	@Override
	public void add(BoardVO item) {
		boarddao.add(item);
	}

	@Override
	public BoardVO item(Long boardId) {
		return boarddao.item(boardId);
	}

	@Override
	public void update(BoardVO item) {
		boarddao.update(item);
	}

	@Override
	public void delete(Long boardId) {
		boarddao.delete(boardId);
	}

}
