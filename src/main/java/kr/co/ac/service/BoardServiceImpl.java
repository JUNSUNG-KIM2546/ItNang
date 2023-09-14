package kr.co.ac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ac.dao.BoardDao;
import kr.co.ac.vo.BoardVo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao boarddao;
	
	@Override
	public List<BoardVo> selectBoardList() {
		return boarddao.boardlist();
	}

	@Override
	public void add(BoardVo item) {
		boarddao.add(item);
	}

	@Override
	public BoardVo item(Long boardId) {
		return boarddao.item(boardId);
	}

	@Override
	public void update(BoardVo item) {
		boarddao.update(item);
	}

	@Override
	public void delete(Long boardId) {
		boarddao.delete(boardId);
	}

}
