import java.util.Scanner;
public class Petshop {
    public static void main(String[] args) {
        int r;
        Scanner sc = new Scanner(System.in);
        do{
            System.out.println("Caso escolha 1: Comprar blusa\n Caso escolha 2: Solitar valor do produto ou serviço");
            int x = sc.nextInt();   

            switch(x){
                case 1: 
                    System.out.println("Ótima escolha");
                    break;
                case 2:
                    System.out.println("O valor da blusa é R$2,00");
                    break;
            }
            System.out.println("Para ver novamente, digite 0");
            r = sc.nextInt();

        } while(r == 0);
    }
}
