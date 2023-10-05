import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc1 = new Scanner(System.in); // Para strings
        Scanner sc2 = new Scanner(System.in); // Para números

        // Gerente
        System.out.print("Nome do gerente: ");
        String nomeGerente = sc1.nextLine();
        System.out.print("Salário do gerente: ");
        double salarioGerente = sc2.nextDouble();
        System.out.print("Departamento do gerente: ");
        String departamento = sc1.nextLine();

        Gerente g1 = new Gerente(nomeGerente, salarioGerente, departamento);

        System.out.println("Salário atual: " + g1.getSalario());
        g1.calcularBonus();
        System.out.println("Salário após o bônus: " + g1.getSalario());

        // Diretor
        System.out.print("Nome do diretor: ");
        String nomeDiretor = sc1.nextLine();
        System.out.print("Salário do diretor: ");
        double salarioDiretor = sc2.nextDouble();
        System.out.print("Quantidade de ações do diretor: ");
        int acoes = sc1.nextInt();

        Diretor d1 = new Diretor(nomeDiretor, salarioDiretor, acoes);
        
    }
}
