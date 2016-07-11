package graden;

public class Graden {

	private int uitkomst;
	
	public Graden() {
		
	}
	//Exception opwerpen voor foute invoer
	public int naarCels(String sFahr) throws NumberFormatException {
		int fahr = Integer.parseInt(sFahr);
		uitkomst = Math.round((fahr -32)/1.8f);
		return uitkomst;
	}
	
	public int naarFahr(String sCels) throws NumberFormatException {
		int cels = Integer.parseInt(sCels);
		uitkomst = Math.round(cels * 1.8f + 32);
		return uitkomst;
	}
}
