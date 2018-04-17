package at.htlklu.balkendiagram;

public class Project {

	private int id;
	private String title;
	private String code;
	
	public Project(int id, String title, String code) {
		this.id = id;
		this.title = title;
		this.code = code;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
}
