package at.htlklu.balkendiagram;

public class Arbeitspaket {

	private int id;
	private String code;
	private String bezeichnung;
	private int std;
	private String datum;
	
	public Arbeitspaket(int id, String code, String bezeichnung, int std, String datum) {
		this.id = id;
		this.code = code;
		this.bezeichnung = bezeichnung;
		this.std = std;
		this.datum = datum;
	}
	

	public Arbeitspaket(int ap_id, String code2, String bezeichnung2, int std) {
		this.id = ap_id;
		this.code = code2;
		this.bezeichnung = bezeichnung2;
		this.std = std;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getBezeichnung() {
		return bezeichnung;
	}

	public void setBezeichnung(String bezeichnung) {
		this.bezeichnung = bezeichnung;
	}

	public int getStd() {
		return std;
	}

	public void setStd(int std) {
		this.std = std;
	}

	public String getDatum() {
		return datum;
	}

	public void setDatum(String datum) {
		this.datum = datum;
	}
	
	
}
