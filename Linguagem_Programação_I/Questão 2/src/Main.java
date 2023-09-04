import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite a opção desejada: ");
        System.out.println("1 - Soma");
        System.out.println("2 - Subtração");
        System.out.println("3 - Divisão");
        System.out.println("4 - Multiplicação");
        int opcao = sc.nextInt();
        System.out.println("Digite o primeiro número: ");
        double num1 = sc.nextDouble();
        System.out.println("Digite o segundo número: ");
        double num2 = sc.nextDouble();
        
        switch (opcao) {
            case 1:
                System.out.println("Resultado da soma: " + Matematica.soma(num1, num2));
                break;
            case 2:
                System.out.println("Resultado da subtração: " + Matematica.subtracao(num1, num2));
                break;
            case 3:
                System.out.println("Resultado da divisão: " + Matematica.divisao(num1, num2));
                break;
            case 4:
                System.out.println("Resultado da multiplicação: " + Matematica.multiplicacao(num1, num2));
                break;
            default:
                System.out.println("Opção inválida!");
                break;
        }
    }
}


