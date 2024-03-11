package Questão_1;

import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        //Usando o teclado para o usuário digitar
        Scanner tr = new Scanner(System.in);
        System.out.println("Digite um número inteiro:");

        //Guardando a informação na variavel
        int numero = tr.nextInt();
        tr.close();

        //Condição
        if(ehPrimo(numero)){
            System.out.println("O número " + numero + " é primo!");
        }else {
            System.out.println("O número " + numero + " não é primo!");
        }
    }

    private static boolean ehPrimo(int numero) {
        if(numero <= 1){
            return false;
        }
        for (int i = 2; i * i <= numero; i++ ){
            if (numero % i == 0){
                return false;
            }
        }
        return true;
    }
}
