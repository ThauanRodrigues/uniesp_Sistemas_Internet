package Questão_3;

public class Main {
    public static void main(String[] args) {
        String nomeCompleto = "Thauan Gleidson Rodrigues Guimarães";
        String[] partesDoNome = nomeCompleto.split(" ");

        for (String parte : partesDoNome) {
            System.out.print(parte.charAt(0) + ". ");
        }
    }
}

