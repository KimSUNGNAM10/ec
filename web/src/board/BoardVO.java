package board;

public class BoardVO {
	private Integer no;
	private String poster;
	private String subject;
	private String content;
	private String lastpost;
	private Integer views;
	private String filename;
	
	public BoardVO() {
		
	}
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLastpost() {
		return lastpost;
	}
	public void setLastpost(String lastpost) {
		this.lastpost = lastpost;
	}
	public Integer getViews() {
		return views;
	}
	public void setViews(Integer views) {
		this.views = views;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public BoardVO(Integer no, String poster, String subject, String content, String lastpost, Integer views,
			String filename) {
		super();
		this.no = no;
		this.poster = poster;
		this.subject = subject;
		this.content = content;
		this.lastpost = lastpost;
		this.views = views;
		this.filename = filename;
	}
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", poster=" + poster + ", subject=" + subject + ", content=" + content
				+ ", lastpost=" + lastpost + ", views=" + views + ", filename=" + filename + "]";
	}
	
	
}
