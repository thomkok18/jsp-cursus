package H3;

public class Graden {

	private int uitkomst;
	
	public Graden() {
		
	}
	public int naarCelsius(String stringFahrenheit) throws NumberFormatException {
		int fahrenheit = Integer.parseInt(stringFahrenheit);
		uitkomst = Math.round((fahrenheit - 32)/1.8f);
		return uitkomst;
	}
	
	public int naarFahrenheit(String stringCelsius) throws NumberFormatException {
		int celsius = Integer.parseInt(stringCelsius);
		uitkomst = Math.round((celsius * 1.8f + 32));
		return uitkomst;
	}
}
