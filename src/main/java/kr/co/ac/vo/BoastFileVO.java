package kr.co.ac.vo;

import org.springframework.web.multipart.MultipartFile;

public class BoastFileVO extends UsersVO {

	// 파일고유번호
	private Long boastFileNo;

	// 게시판 ID
	private Long boastId;

	// 파일저장명
	private String boastSaveName;

	// 파일원본명
	private String boastFileName;

	// 파일업로드시점
	private java.util.Date boastUpTime;

	// 파일저장경로
	private String boastFilePath;

	// 파일확장자명
	private String boastFileExt;

	// 파일사이즈
	private Long boastFileSize;

	// 자랑게시판 업로드
	private MultipartFile boastUploadName;

	public Long getBoastFileNo() {
		return boastFileNo;
	}

	public void setBoastFileNo(Long boastFileNo) {
		this.boastFileNo = boastFileNo;
	}

	public Long getBoastId() {
		return boastId;
	}

	public void setBoastId(Long boastId) {
		this.boastId = boastId;
	}

	public String getBoastSaveName() {
		return boastSaveName;
	}

	public void setBoastSaveName(String boastSaveName) {
		this.boastSaveName = boastSaveName;
	}

	public String getBoastFileName() {
		return boastFileName;
	}

	public void setBoastFileName(String boastFileName) {
		this.boastFileName = boastFileName;
	}

	public java.util.Date getBoastUpTime() {
		return boastUpTime;
	}

	public void setBoastUpTime(java.util.Date boastUpTime) {
		this.boastUpTime = boastUpTime;
	}

	public String getBoastFilePath() {
		return boastFilePath;
	}

	public void setBoastFilePath(String boastFilePath) {
		this.boastFilePath = boastFilePath;
	}

	public String getBoastFileExt() {
		return boastFileExt;
	}

	public void setBoastFileExt(String boastFileExt) {
		this.boastFileExt = boastFileExt;
	}

	public Long getBoastFileSize() {
		return boastFileSize;
	}

	public void setBoastFileSize(Long boastFileSize) {
		this.boastFileSize = boastFileSize;
	}

	public MultipartFile getBoastUploadName() {
		return boastUploadName;
	}

	public void setBoastUploadName(MultipartFile boastUploadName) {
		this.boastUploadName = boastUploadName;
	}
}
