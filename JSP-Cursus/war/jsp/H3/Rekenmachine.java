package H3;

public class Rekenmachine {
	String uitkomst;
	String foutboodschap;

	public Rekenmachine(String arg1, String arg2, String functie){
		uitkomst = "";
		foutboodschap = "";

		try{
			double getal1 = Double.parseDouble(arg1);
			double getal2 = Double.parseDouble(arg2);

			if (functie.equals("+")){
				uitkomst += getal1 + getal2;
			}
			if (functie.equals("-")){
				uitkomst += getal1 - getal2;
			}
			if (functie.equals("X")){
				uitkomst += getal1 * getal2;
			}
			if (functie.equals("/")){
				uitkomst += getal1 / getal2;
			}
		}catch (NumberFormatException e){
			foutboodschap = "voer twee decimale getalen in";
		}
	}

	public String getUitkomst() {
		return uitkomst;
	}

	public String getFoutboodschap() {
		return foutboodschap;
	}
}