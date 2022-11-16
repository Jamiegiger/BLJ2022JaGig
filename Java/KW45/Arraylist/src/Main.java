package ch.noseryoung.blj;
import java.util.ArrayList;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {

        ArrayList<String>  words = new ArrayList<>();
        int number;
        do {





            System.out.print("pack a thing: ");
            Scanner input1 = new Scanner(System.in);
            String word = input1.next();
            words.add(word);
            System.out.println("\ni will pack: \n" + words);
            System.out.print("click 1 for packing, click 2 for quiting: ");
            Scanner input = new Scanner(System.in);
            number = input.nextInt();
        } while (number == 1);
    }
}