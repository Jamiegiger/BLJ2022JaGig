package ch.noseryoung.blj;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;  // Import the Scanner class
public class Starter {
    public static void main(String[] args) {



        Aquarium firstAquarium= new Aquarium(true);
        Aquarium secondAquarium= new Aquarium(false);
        int[][] aquariumTest = firstAquarium.getAquarium();
        aquariumTest[0][5] = 1;
        aquariumTest[4][2] = 1;
        aquariumTest[5][7] = 1;
        aquariumTest[3][2] = 1;
        int[][] aquariumTest2 = secondAquarium.getAquarium();
        aquariumTest2[2][7] = 1;
        aquariumTest2[4][6] = 1;
        aquariumTest2[1][2] = 1;
        System.out.println("\nWelcome to the Aquarium");
        System.out.println("\nthe names of your fishes are Richard, Saad, Ariq\n");
        Fish fish1 = new Fish("Richard", true, 4, 2);
        firstAquarium.addFish (fish1);
        Fish fish2 = new Fish("Saad", false, 5,5);
        secondAquarium.addFish (fish2);
        Fish fish3 = new Fish("Ariq", true, 3, 2);
        firstAquarium.addFish (fish3);
        Fish fish4 = new Fish ("Thunfisch", true, 6, 4);
        firstAquarium.addFish (fish4);
        Fish fish5 = new Fish ("Hering", true, 2, 7);
        firstAquarium.addFish (fish5);
        Fish fish6 = new Fish ("Lachs", false, 5, 8);
        secondAquarium.addFish (fish6);
        Fish fish7 = new Fish ("Aal", false, 9, 9);
        secondAquarium.addFish (fish7);
        System.out.println("this is the saltwater Aquarium:");
        firstAquarium.printAquarium();
        System.out.println("this is the normal water Aquarium:");
        secondAquarium.printAquarium();

        

    }
    }
