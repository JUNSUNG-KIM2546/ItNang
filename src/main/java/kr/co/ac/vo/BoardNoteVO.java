package kr.co.ac.vo;

public class BoardNoteVO extends BoardVO {
	
	//게시판고유번호
	private Long boardId;
	
	//유저고유번호
	private Long uNo;
	
	//댓글고유번호
	private Long noteNo;
		
	//댓글등록일자
	private java.util.Date noteFrst;
		
	//댓글수정일자
	private java.util.Date noteLast;
		
	//댓글내용
	private String noteCn;
		
	//좋아요수
	private Long noteCo;

	
	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public Long getuNo() {
		return uNo;
	}

	public void setuNo(Long uNo) {
		this.uNo = uNo;
	}

	public Long getNoteNo() {
		return noteNo;
	}

	public void setNoteNo(Long noteNo) {
		this.noteNo = noteNo;
	}

	public java.util.Date getNoteFrst() {
		return noteFrst;
	}

	public void setNoteFrst(java.util.Date noteFrst) {
		this.noteFrst = noteFrst;
	}

	public java.util.Date getNoteLast() {
		return noteLast;
	}

	public void setNoteLast(java.util.Date noteLast) {
		this.noteLast = noteLast;
	}

	public String getNoteCn() {
		return noteCn;
	}

	public void setNoteCn(String noteCn) {
		this.noteCn = noteCn;
	}

	public Long getNoteCo() {
		return noteCo;
	}

	public void setNoteCo(Long noteCo) {
		this.noteCo = noteCo;
	}
	
}
