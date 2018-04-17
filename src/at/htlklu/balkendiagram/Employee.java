package at.htlklu.balkendiagram;

public class Employee {

	private int id;
	private String vname;
	private String nname;

	public Employee(int id, String vname, String nname) {
		this.setId(id);
		this.setVname(vname);
		this.setNname(nname);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public String getNname() {
		return nname;
	}

	public void setNname(String nname) {
		this.nname = nname;
	}

	@Override
	public String toString() {
		return String.format("%s %s (%d)", nname.toUpperCase(), vname, id);
	}
	
}
