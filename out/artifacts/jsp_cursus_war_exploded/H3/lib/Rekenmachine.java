package web.jsp.H3.lib;

public class Rekenmachine {
    double uitkomst = 0.0D;

    public Rekenmachine() {

    }

    public double bereken(double arg0, double arg1, String functie) {
        switch (functie.hashCode()) {
            case 43:
                if (functie.equals("+")) {
                    this.uitkomst = arg0 + arg1;
                }
                break;
            case 45:
                if (functie.equals("-")) {
                    this.uitkomst = arg0 - arg1;
                }
            case 47:
                if (functie.equals("/")) {
                    this.uitkomst = arg0 / arg1;
                }
            case 120:
                if (functie.equals("x")) {
                    this.uitkomst = arg0 * arg1;
                }
        }
        return this.uitkomst;
    }
}
