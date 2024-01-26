package kr.co.ac.vo;

public class BoardVO extends BoardFileVO {
	
	//유저고유번호
	private Long uNo;
	
	//게시판 ID
	private Long boardId;
	
	//게시물 명
	private String boardSj;
		
	//게시물 내용
	private String boardCn;
		
	//하트수
	private Long boardCo;
		
	//등록자 IP
	private String boardIp;
		
	//공지여부
	private String boardAt;
	
	//이미지
	private  String boardImg;
		
	//최초등록시점
	private java.util.Date boardFrst;
		
	//최종수정시점
	private java.util.Date boardLast;
	
	//게시물 분류
	private String useAt;

	
	public Long getuNo() {
		return uNo;
	}

	public void setuNo(Long uNo) {
		this.uNo = uNo;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public String getBoardSj() {
		return boardSj;
	}

	public void setBoardSj(String boardSj) {
		this.boardSj = boardSj;
	}

	public String getBoardCn() {
		return boardCn;
	}

	public void setBoardCn(String boardCn) {
		this.boardCn = boardCn;
	}

	public Long getBoardCo() {
		return boardCo;
	}

	public void setBoardCo(Long boardCo) {
		this.boardCo = boardCo;
	}

	public String getBoardIp() {
		return boardIp;
	}

	public void setBoardIp(String boardIp) {
		this.boardIp = boardIp;
	}

	public String getBoardAt() {
		return boardAt;
	}

	public void setBoardAt(String boardAt) {
		this.boardAt = boardAt;
	}

	public String getBoardImg() {
		return boardImg;
	}

	public void setBoardImg(String boardImg) {
		this.boardImg = boardImg;
	}

	public java.util.Date getBoardFrst() {
		return boardFrst;
	}

	public void setBoardFrst(java.util.Date boardFrst) {
		this.boardFrst = boardFrst;
	}

	public java.util.Date getBoardLast() {
		return boardLast;
	}

	public void setBoardLast(java.util.Date boardLast) {
		this.boardLast = boardLast;
	}

	public String getUseAt() {
		return useAt;
	}

	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	
}
