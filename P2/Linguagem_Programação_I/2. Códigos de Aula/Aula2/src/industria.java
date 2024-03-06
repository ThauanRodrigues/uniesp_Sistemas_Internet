import java.util.Scanner; 
public class industria {
    public static void main(String[] args){

      Scanner sc = new Scanner(System.in);

        System.out.println("Qual o nome do funcionário ? ");
        String nome = sc.nextLine();
      
        System.out.println("Digite a sua matricula: ");
        int matricula = sc.nextInt();

        System.out.println("Qual é o salário? ");
        int salario = sc.nextInt();

        System.out.println("Olá " + nome + " sua matricula é: " + matricula + " o salário é " + salario) ;
        sc.close();
      }

}

