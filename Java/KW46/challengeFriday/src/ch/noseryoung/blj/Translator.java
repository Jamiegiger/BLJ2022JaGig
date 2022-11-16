package ch.noseryoung.blj;


import java.util.HashMap;


public class Translator {

    public String getTranslator(String eingabe) {

        int i = 0;
        while (i < eingabe.length()) {

            HashMap<Character, String> morse = new HashMap<Character, String>();

            morse.put('a', ".- ");
            morse.put('b', "-... ");
            morse.put('c', "-.-. ");
            morse.put('d', "-.. ");
            morse.put('e', ". ");
            morse.put('f', "..-. ");
            morse.put('g', "--. ");
            morse.put('h', ".... ");
            morse.put('i', ".. ");
            morse.put('j', ".--- ");
            morse.put('k', "-.- ");
            morse.put('l', ".-.. ");
            morse.put('m', "-- ");
            morse.put('n', "-. ");
            morse.put('o', "--- ");
            morse.put('p', ".--. ");
            morse.put('q', "--.- ");
            morse.put('r', ".-. ");
            morse.put('s', "... ");
            morse.put('t', "- ");
            morse.put('u', "..- ");
            morse.put('v', "...- ");
            morse.put('w', ".-- ");
            morse.put('x', "-..- ");
            morse.put('y', "-.-- ");
            morse.put('z', "--.. ");
            morse.put('1', ".---- ");
            morse.put('2', "..--- ");
            morse.put('3', "...-- ");
            morse.put('4', "....- ");
            morse.put('5', "..... ");
            morse.put('6', "-.... ");
            morse.put('7', "--... ");
            morse.put('8', "---.. ");
            morse.put('9', "----. ");
            morse.put('0', "----- ");
            morse.put(' ', "/ ");
            morse.put('?', "..--.. ");
            morse.put('.', ".-.-.- ");
            morse.put('=', "-...- ");
            morse.put('+', ".-.-. ");
            morse.put(',', "--..-- ");
            morse.put('@', ".--.-. ");
            morse.put('&', ".-... ");

            System.out.print(morse.get(eingabe.charAt(i)));
            i++;
        }


        return eingabe;

    }



        public String getrevTranslator(String eingabe1) {



            String str = eingabe1;
            String[] arrOfStr = str.split(" ");
            int l = arrOfStr.length;
            int z = 0;
            while (z < l) {

                HashMap<String, String> text = new HashMap<String, String>();

                text.put(".-", "a");
                text.put("-...", "b");
                text.put("-.-.", "c");
                text.put("-..", "d");
                text.put(".", "e");
                text.put("..-.", "f");
                text.put("--.", "g");
                text.put("....", "h");
                text.put("..", "i");
                text.put(".---", "j");
                text.put("-.-", "k");
                text.put(".-..", "l");
                text.put("--", "m");
                text.put("-.", "n");
                text.put("---", "o");
                text.put(".--.", "p");
                text.put("--.-", "q");
                text.put(".-.", "r");
                text.put("...", "s");
                text.put("-", "t");
                text.put("..-", "u");
                text.put("...-", "v");
                text.put(".--", "w");
                text.put("-..-", "x");
                text.put("-.--", "y");
                text.put("--..", "z");
                text.put(".----", "1");
                text.put("..---", "2");
                text.put("...--", "3");
                text.put("....-", "4");
                text.put(".....", "5");
                text.put("-....", "6");
                text.put("--...", "7");
                text.put("---..", "8");
                text.put("----.", "9");
                text.put("-----", "9");
                text.put("..--..", "?");
                text.put(".-.-.-", ".");
                text.put("-...-", "=");
                text.put(".-.-.", "+");
                text.put("--..--", ",");
                text.put(".--.-.", "@");
                text.put(".-...", "&");
                text.put("/", " ");



                System.out.print(text.get(arrOfStr[z]));
                z++;

            }

            return eingabe1;

        }
    }
