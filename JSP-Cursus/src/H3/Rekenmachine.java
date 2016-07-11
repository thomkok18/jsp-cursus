package H3;

public class Rekenmachine {
  double uitkomst = 0;

  public double bereken(double arg0, double arg1, String functie) {
    switch (functie) {
      case "+": uitkomst = arg0 + arg1;
                break;

      case "-": uitkomst = arg0 - arg1;
                break;

      case "x": uitkomst = arg0 * arg1;
                break;

      case "/": uitkomst = arg0 / arg1;
                break;
    }
    return uitkomst;
  }
}