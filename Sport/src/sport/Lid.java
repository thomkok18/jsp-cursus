package sport;

public class Lid {
	private String spelerscode, roepnaam, tussenvoegsels, achternaam, email;

	public Lid() {
		this.spelerscode = "";
		this.roepnaam = "";
		this.tussenvoegsels = "";
		this.achternaam = "";
		this.email = "";
	}

	public Lid(String roepnaam, String tussenvoegsels, String achternaam, String email) {

		this.roepnaam = roepnaam;
		this.tussenvoegsels = tussenvoegsels;
		this.achternaam = achternaam;
		this.email = email;
		this.spelerscode = email;
	}

	public String getSpelerscode() {
		return spelerscode;
	}

	public void setSpelerscode(String spelerscode) {
		this.spelerscode = spelerscode;
	}

	public String getRoepnaam() {
		return roepnaam;
	}

	public void setRoepnaam(String roepnaam) {
		this.roepnaam = roepnaam;
	}

	public String getTussenvoegsels() {
		return tussenvoegsels;
	}

	public void setTussenvoegsels(String tussenvoegsels) {
		this.tussenvoegsels = tussenvoegsels;
	}

	public String getAchternaam() {
		return achternaam;
	}

	public void setAchternaam(String achternaam) {
		this.achternaam = achternaam;
	}

	public String getNaam() {
		String naam;
		if (tussenvoegsels.equals("")) {
			naam = roepnaam + " " + achternaam;
		} else {
			naam = roepnaam + " " + tussenvoegsels + " " + achternaam;
		}
		return naam;
	}
}