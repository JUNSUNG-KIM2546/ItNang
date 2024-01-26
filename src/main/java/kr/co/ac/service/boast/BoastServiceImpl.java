package kr.co.ac.service.boast;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ac.dao.boast.BoastDao;
import kr.co.ac.vo.BoastVO;

@Service
public class BoastServiceImpl implements BoastService {

	@Autowired
	BoastDao boastdao;

	@Override
	public List<BoastVO> selectBoastList(BoastVO boastVO) {
		return boastdao.selectBoastList(boastVO);
	}

	@Override
	public void add(BoastVO item) {
		boastdao.add(item);
	}

	@Override
	public BoastVO item(Long boastId) {
		return boastdao.item(boastId);
	}

	@Override
	public void update(BoastVO item) {
		boastdao.update(item);
	}

	@Override
	public void delete(Long boastId) {
		boastdao.delete(boastId);
	}

}
