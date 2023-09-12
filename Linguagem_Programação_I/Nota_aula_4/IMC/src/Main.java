import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o seu peso em quilogramas:");
        double peso = sc.nextDouble();
        System.out.println("Digite a sua altura em metros:");
        double altura = sc.nextDouble();
        Pessoa pessoa = new Pessoa(peso, altura);
        System.out.println("Seu IMC é: " + pessoa.calcularIMC());
    }
}