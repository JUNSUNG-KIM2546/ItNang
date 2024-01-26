package kr.co.ac.dao.boast;

import java.util.List;

import kr.co.ac.vo.BoastVO;

public interface BoastDao {

	List<BoastVO> selectBoastList(BoastVO boastVo);

	void add(BoastVO item);

	BoastVO item(Long boastId);

	void update(BoastVO item);

	void delete(Long boastId);

}
