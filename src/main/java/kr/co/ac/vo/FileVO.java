package kr.co.ac.vo;

import java.util.Date;

public class FileVO {
	
	// 첨부파일 고유ID
	private Long fileNo;

	// 저장파일명
	private String savedName;

	// 원파일명
	private String fileName;

	// 파일 수정일자
	private Date upTime;
	
	// 파일 저장 경로
	private String filePath;

	// 파일 확장자
	private String fileExt;
	
	// 파일 사이즈
	private Long fileSize;
	
	
	// 자랑게시물고유번호
	private Long boastId;
	
	// 자유게시물고유번호
	private Long boardId;
	
	// 유저고유번호
	private Long u_no;
	

	public Long getFileNo() {
		return fileNo;
	}

	public void setFileNo(Long fileNo) {
		this.fileNo = fileNo;
	}

	public String getSavedName() {
		return savedName;
	}

	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Date getUpTime() {
		return upTime;
	}

	public void setUpTime(Date upTime) {
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

	public Long getBoastId() {
		return boastId;
	}

	public void setBoastId(Long boastId) {
		this.boastId = boastId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public Long getU_no() {
		return u_no;
	}

	public void setU_no(Long u_no) {
		this.u_no = u_no;
	}
}
