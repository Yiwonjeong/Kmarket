package kr.co.kmarket.vo;

public class CsVO {

	private int no;				// 글 고유 번호 
	private String uid;			// 문의하기 글 작성 시 아이디 
	private int parent;			// 문의 답변 시 
	private String cate;		// 공지사항, 자주하는 질문, 문의하기...
	private int cateNo;			// cate 내 세부 카테고리 (ex. 공지사항 -> 전체, 고객서비스, 안전거래...)
	private String cateType1;	// 문의하기 -[가입], [탈퇴], [로그인]...
	private String cateType2;	// 가입문의내용, 탈퇴문의내용, 회원정보문의내용...
	private String title;		// 제목 
	private String content;		// 내용
	private String regip;		// IP
	private String rdate;		// 날짜 
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public int getCateNo() {
		return cateNo;
	}
	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}
	public String getCateType1() {
		return cateType1;
	}
	public void setCateType1(String cateType1) {
		this.cateType1 = cateType1;
	}
	public String getCateType2() {
		return cateType2;
	}
	public void setCateType2(String cateType2) {
		this.cateType2 = cateType2;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	
	
	
	
	
	
	
}
