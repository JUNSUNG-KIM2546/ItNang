package kr.co.ac.service.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ac.dao.file.BoastFileDao;
import kr.co.ac.vo.BoastFileVO;

@Service
public class BoastFileServiceImpl implements BoastFileService {
	@Autowired
	BoastFileDao filedao;
	
	@Override
	public void add(BoastFileVO fileVO) {
		filedao.fileAdd(fileVO);
	}

}
