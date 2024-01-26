package kr.co.ac.vo;

import org.springframework.web.multipart.MultipartFile;

public class UsersFileVO {
	private Long uNo; // 회원고유번호
	private Long fileNo; // 파일고유번호
	private String saveName; // 파일저장명
	private String fileName; // 파일원본명
	private java.util.Date upTime; // 업로드시점
	private String filePath; // 파일저장경로
	private String fileExt; // 파일확장자명
	private Long fileSize; // 파일사이즈

	private MultipartFile userUploadName; // 파일원본명

	public Long getuNo() {
		return uNo;
	}

	public void setuNo(Long uNo) {
		this.uNo = uNo;
	}

	public Long getFileNo() {
		return fileNo;
	}

	public void setFileNo(Long fileNo) {
		this.fileNo = fileNo;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public java.util.Date getUpTime() {
		return upTime;
	}

	public void setUpTime(java.util.Date upTime) {
		this.upTime = upTime;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileExt() {
		return fileExt;
	}

	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}

	public Long getFileSize() {
		return fileSize;
	}

	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}

	public MultipartFile getUserUploadName() {
		return userUploadName;
	}

	public void setUserUploadName(MultipartFile userUploadName) {
		this.userUploadName = userUploadName;
	}
}
