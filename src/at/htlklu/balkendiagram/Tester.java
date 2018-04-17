package at.htlklu.balkendiagram;

public class Tester {

	public static void main(String[] args) {
		DatabaseManager dbm = new DatabaseManager();
		dbm.connect("projekte");
		for(Project p : dbm.getProjects())
			System.out.println(p.getTitle());
	}

}
