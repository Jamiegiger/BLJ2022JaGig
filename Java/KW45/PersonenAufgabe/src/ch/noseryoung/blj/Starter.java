package ch.noseryoung.blj;
import java.util.Scanner;  // Import the Scanner class

public class Starter {
    public static void main(String[] args) {

        Person Ariq =  new Person(" Ariq,", " Plattformentwickler,", " IPG, ", " Lionel Messi (Ronaldo>Messi).");
        Person Richard = new Person(" Richard,", " Plattformentwickler,", " IPG, ", " Cristiano Ronaldo (Ronaldo>Messi).");
        Person Jamie = new Person(" Jamie,", " Gebäudeinformatiker,", " Burkhalter Technics AG, ", " Cristiano Ronaldo = GOAT (Ronaldo>Messi).");

        Ariq.presentYourself();
        Richard.presentYourself();
        Jamie.presentYourself();

        Scanner name= new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter username:");
        Scanner Job= new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter ur job:");
        Scanner Company = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter ur Company:");
        Scanner favoriteFootballPlayer = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter ur favoriteFootballPlayer:");


        String userName = name.nextLine();  // Read user input
        String myJob = Job.nextLine();  // Read user input
        String myCompany = Company.nextLine();  // Read user input
        String myfavoriteFootballPlayer = favoriteFootballPlayer.nextLine();  // Read user input
        System.out.println("Username is: " + userName + " , job is: " + myJob + ", company  is : " + myCompany + ", favorite Football Player is: " + myfavoriteFootballPlayer);  // Output user input
    }

}