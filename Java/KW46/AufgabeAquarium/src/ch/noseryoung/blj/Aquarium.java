package ch.noseryoung.blj;
import java.util.ArrayList;
import java.util.Arrays;
public class Aquarium {
    private boolean hasSalt;
    private int[][] aquarium = new int[11][11];
    public int[][] getAquarium() {
        return aquarium;
    }
    public Aquarium (boolean hasSalt) {
        this.hasSalt= hasSalt;
    }
    private ArrayList<Fish> fishList = new ArrayList<>();


    public void addFish (Fish fish){
        fishList.add(fish);
        aquarium[fish.getX()][fish.getY()] = 1;
    }

    public void printAquarium() {

        for (int i = 0; i < aquarium.length; i++) {
            System.out.print("⬛");
        }
        System.out.println("⬛⬛⬛⬛⬛⬛");
        String aquariumAsString = Arrays.deepToString(aquarium);
        aquariumAsString = aquariumAsString.replace("[[", "⬛").replace("], [", "⬛\n⬛").replace(", ", " ").replace("]]",
                "⬛").replace("1", "🐡");
        if (hasSalt == false) {
            aquariumAsString = aquariumAsString.replace("0", "💧");
        } else {
            aquariumAsString = aquariumAsString.replace("0", "🌊");
        }
        System.out.println(aquariumAsString);
        for (int i = 0; i < aquarium.length; i++) {
            System.out.print("⬛");
        }
        System.out.println("⬛⬛⬛⬛⬛⬛\n");
    }



}

