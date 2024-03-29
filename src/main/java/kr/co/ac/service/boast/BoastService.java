package kr.co.ac.service.boast;

import java.util.List;

import kr.co.ac.vo.BoastVO;
import kr.co.ac.vo.FileVO;

public interface BoastService {

	List<BoastVO> selectBoastList(BoastVO boastVO);

	void add(BoastVO item);

	BoastVO item(Long boastId);

	void update(BoastVO item);

	void delete(Long boastId);

}
