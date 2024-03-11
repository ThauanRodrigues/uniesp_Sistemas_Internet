package Questão_2;

import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner tr = new Scanner(System.in);
        int numerodaSorte = (int) (Math.random() * 1001); // Está entre 0 a 1000
        int tentativas = 0;

        //Loop
        while(true){
            System.out.println("Digite um número entre 0 e 1000: ");
            int palpitesdeNumero = tr.nextInt(); tentativas++;

            //Condições
            if(palpitesdeNumero == numerodaSorte){
                System.out.println("Parabens!! Você acertou o numero da sorte! " + numerodaSorte + " em "
                        + tentativas + " tentativas ");
                break;
            }else if (palpitesdeNumero < numerodaSorte){
                System.out.println("Tente um número maior.");
            }else {
                System.out.println("Tente um número menor.");
            }
        }
        tr.close();
    }
}

