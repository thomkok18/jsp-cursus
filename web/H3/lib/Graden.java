package web.jsp.H3.lib;

public class Graden {
    private int uitkomst;

    public Graden() {

    }

    public int naarCelsius(String stringCelsius) throws NumberFormatException {
        int celsius = Integer.parseInt(stringCelsius);
        this.uitkomst = Math.round((float)celsius * 1.8F + 32.0F);
        return this.uitkomst;
    }
}
