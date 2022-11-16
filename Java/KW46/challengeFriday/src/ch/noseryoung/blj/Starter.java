package ch.noseryoung.blj;
import java.util.Scanner;

public class Starter {


    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.println("Geben Sie einen Satz ein.");
        String input = scanner.nextLine();
        input = input.toLowerCase();

        Translator translator = new Translator();
        translator.getTranslator(input);

        System.out.println("\nGeben Sie einen Morse Satz ein.");
        String input1= scanner.nextLine();
        input1 = input1.toLowerCase();

        Translator revtranslator = new Translator();
        translator.getrevTranslator(input1);
    }

}
