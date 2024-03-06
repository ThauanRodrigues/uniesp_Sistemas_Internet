import java.util.Scanner;
public class Main {
    public static void main(String[] args){
        Aluno a = new Aluno();
        Scanner sc = new Scanner(System.in);
        String nome;
        System.out.println("Informe seu nome:");
        nome=sc.nextLine();
        double n1, n2, n3;
        System.out.println("Informe a primeira nota");
        n1 = sc.nextDouble();
        System.out.println("Informe a segunda nota");
        n2 = sc.nextDouble();
        System.out.println("Informe a terceira nota");
        n3 = sc.nextDouble();
        System.out.printf("Sua média é: %.2f%n " , (a.media(n1,n2, n3 )));
    }
}
