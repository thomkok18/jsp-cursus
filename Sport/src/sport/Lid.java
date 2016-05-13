package sport;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (req.getParameter("verzend_nieuw_lid_knop") != null) {
			String roepnaam = req.getParameter("roepnaam");
			String tussenvoegsels = req.getParameter("tussenvoegsels");
			String achternaam = req.getParameter("achternaam");
			String email = req.getParameter("email");
			Lid lid = new Lid(roepnaam, tussenvoegsels, achternaam, email);
		}
	}
}