package at.htlklu.balkendiagram;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DatabaseManager {
	
	private Connection con;

	public DatabaseManager() {
		connect("projekte");
	}
	
	public void connect(String dbName) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbName,"root","");
		} catch (Exception e) {
			// Exception for all
			e.printStackTrace();
		}
	}
	
	public List<Employee> getEmployee() {
		List<Employee> employees = new ArrayList<Employee>();
		try {
		String sql = "select * from mitarbeiter";
	    Statement stm = con.createStatement();
	    ResultSet rst = stm.executeQuery(sql);
	    while(rst.next()){
	    	String vname = rst.getString("vorname");
	    	String nname = rst.getString("nachname");
	    	int id = rst.getInt("id");
	    	
	    	Employee e = new Employee(id,vname,nname);
	    	employees.add(e);
	    }
		}catch(SQLException e) {
			System.out.println("Error");
		}
		return employees;
	}
	
	public List<Arbeitspaket> getArbeitspaketeByEmployeeId(int id) {
		List<Arbeitspaket> arbeitspakete = new ArrayList<Arbeitspaket>();
		try {
			String sql = "SELECT * FROM arbeitspakete a, ma_ap_zuord z where z.ma_id = "+id+" AND z.ap_id = a.id";
		    Statement stm = con.createStatement();
		    ResultSet rst = stm.executeQuery(sql);
		    while(rst.next()){
		    	int ap_id = rst.getInt("id");
		    	String code = rst.getString("code");
		    	String bezeichnung = rst.getString("bezeichnung");
		    	int std = rst.getInt("std");
		    	String datum = rst.getString("datum");
		    	
		    	Arbeitspaket ap = new Arbeitspaket(ap_id, code, bezeichnung, std, datum);
		    	arbeitspakete.add(ap);
		    }
			}catch(SQLException e) {
				System.out.println("Error");
			}
		
		return arbeitspakete;
		
	}
	
	public List<Arbeitspaket> getArbeitspaketeByProjectId(int id) {
		List<Arbeitspaket> arbeitspakete = new ArrayList<Arbeitspaket>();
		try {
			String sql = "SELECT ap.id, ap.code, ap.Bezeichnung, sum(map.std) as std FROM arbeitspakete ap, ma_ap_zuord map where pr_nr = " + id +" AND map.ap_id = ap.id group by ap.code, ap.id, ap.Bezeichnung order by sum(map.std) desc";
		    Statement stm = con.createStatement();
		    ResultSet rst = stm.executeQuery(sql);
		    while(rst.next()){
		    	int ap_id = rst.getInt("id");
		    	String code = rst.getString("code");
		    	String bezeichnung = rst.getString("bezeichnung");
		    	int std = rst.getInt("std");
		    	Arbeitspaket ap = new Arbeitspaket(ap_id, code, bezeichnung, std);
		    	arbeitspakete.add(ap);
		    }
			}catch(SQLException e) {
			e.printStackTrace();
			}
		
		return arbeitspakete;
		
	}
	
	public List<Project> getProjects() {
		List<Project> projects = new ArrayList<Project>();
		try {
			String sql = "SELECT * FROM projekte";
		    Statement stm = con.createStatement();
		    ResultSet rst = stm.executeQuery(sql);
		    while(rst.next()){
		    	int id = rst.getInt("nr");
		    	String title = rst.getString("titel");
		    	String code = rst.getString("code");
		    	
		    	Project p = new Project(id, title, code);
		    	projects.add(p);
		    }
			}catch(SQLException e) {
				System.out.println("Error");
			}
		
		return projects;
		
	}
}
