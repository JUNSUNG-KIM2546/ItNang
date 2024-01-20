package kr.co.ac.vo;

public class BoastFileVO extends BoastVO {
	
	//파일고유번호
	private Long fileNo;
	
	//게시판 ID
	private Long boastId;
	
	//파일저장명
	private String saveName;
		
	//파일원본명
	private String fileName;
		
	//파일업로드시점
	private java.util.Date upTime;
		
	//파일저장경로
	private String filePath;
	
	//파일확장자명
	private String fileExt;
		
	//파일사이즈
	private Long fileSize;

	
	public Long getFileNo() {
		return fileNo;
	}

	public void setFileNo(Long fileNo) {
		this.fileNo = fileNo;
	}

	public Long getBoastId() {
		return boastId;
	}

	public void setBoastId(Long boastId) {
		this.boastId = boastId;
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
	
}
