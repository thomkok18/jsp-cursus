public class Lid {
    private String spelerscode,
            roepnaam,
            tussenvoegsels,
            achternaam,
            email;

    public Lid() {}

    /**
     * constructor maakt lid-object
     * @param roepnaam
     * @param tussenvoegsels
     * @param achternaam
     * @param email
     */
    public Lid (
            String roepnaam,
            String tussenvoegsels,
            String achternaam,
            String email)
    {
        this.roepnaam = roepnaam;
        this.tussenvoegsels = tussenvoegsels;
        this.achternaam = achternaam;
        this.email = email;
        this.spelerscode = email;
    }

    /********* GETTERS EN SETTERS ************/
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

    /**
     *@return samengevoegde naam
     *
     */
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