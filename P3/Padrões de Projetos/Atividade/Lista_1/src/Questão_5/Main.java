package Questão_5;

import java.util.Arrays;
public class Main {
    public static void main(String[] args) {
        String palavra = " Java";
        int[] array = new int[palavra.length()];

        for (int i = 0; i < palavra.length(); i++) {
            array[i] = palavra.charAt(i) - 'a' + 1;
        }

        System.out.println("Array: " + Arrays.toString(array));
        Arrays.sort(array);
        System.out.println("Array ordenado: " + Arrays.toString(array));
        char[] novaPalavra = new char[palavra.length()];
        for (int i = 0; i < array.length; i++) {
            novaPalavra[i] = (char) (array[i] + 'a' - 1);
        }

        System.out.println("Saída: " + new String(novaPalavra));
    }
}
