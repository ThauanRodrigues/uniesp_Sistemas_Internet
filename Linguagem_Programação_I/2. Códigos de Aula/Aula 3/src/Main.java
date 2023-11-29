import java.util.Scanner;
public class Main {
    public static void main(String[] args){
        Calculadora c = new Calculadora();
        Scanner sc = new Scanner(System.in);

        int n1, n2;
        System.out.println("Número 1");
        n1 = sc.nextInt();
        System.out.println("Número 2");
        n2 = sc.nextInt();

        System.out.print (c.somar(n1,n2));

    }
}
