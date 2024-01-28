package kr.co.ac.service.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ac.dao.file.UsersFileDao;
import kr.co.ac.vo.UsersFileVO;

@Service
public class UsersFileServiceImpl implements UsersFileService {
	@Autowired
	UsersFileDao filedao;
	
	
	@Override
	public void UfileAdd(UsersFileVO file) {
		filedao.fileAdd(file);
	}


	@Override
	public void delete(Long uNo) {
		filedao.fileDelete(uNo);
	}

}
