package ch.noseryoung.blj;

public class Person {
    private String name;
    private String Job;
    private String Company;
    private String favoriteFootballPlayer;

    public Person(String name, String Job, String Company, String favoriteFootballPlayer) {
        this.name = name;
        this.Job = Job;
        this.Company = Company;
        this.favoriteFootballPlayer = favoriteFootballPlayer;

    }

    public String getName() {
        return name;
    }

    public void setJob(String Job) {
        Job = Job;
    }

    public void setCompany(String Company) {
        Company = Company;
    }

    public void setFavoriteFootballPlayer(String favoriteFootballPlayer) {
        this.favoriteFootballPlayer = favoriteFootballPlayer;
    }

    public void presentYourself (){
        System.out.println("Hallo, ich heisse" + name + " mein Beruf ist" + Job + " Ich arbeite bei der Firma" + Company + "Mein lieblings Fussballer ist" + favoriteFootballPlayer);
    }


}
