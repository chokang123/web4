package cgvBoard;

public class MVBoardSubVO {
	private long no;
	private String autor;
	private String content;
	private String sandTime;
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSandTime() {
		return sandTime;
	}
	public void setSandTime(String sandTime) {
		this.sandTime = sandTime;
	}
	public MVBoardSubVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MVBoardSubVO(long no, String autor, String content, String sandTime) {
		super();
		this.no = no;
		this.autor = autor;
		this.content = content;
		this.sandTime = sandTime;
	}
	@Override
	public String toString() {
		return "MVBoardSubVO [no=" + no + ", autor=" + autor + ", content=" + content + ", sandTime=" + sandTime + "]";
	}
	
}
