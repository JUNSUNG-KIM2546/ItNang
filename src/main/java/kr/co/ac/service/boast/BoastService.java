package kr.co.ac.service.boast;

import java.util.List;

import kr.co.ac.vo.BoardVO;
import kr.co.ac.vo.BoastVO;
import kr.co.ac.vo.FileVO;

public interface BoastService {

	List<BoastVO> selectBoastList(BoastVO boastVo);

	void add(BoastVO item, List<FileVO> fileVOList);

	BoastVO item(Long boastId);

	void update(BoastVO item);

	void delete(Long boastId);

}
