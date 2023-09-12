import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        ContaBancaria conta = new ContaBancaria();
        Scanner sc = new Scanner(System.in);
        boolean sair = false;

        while (!sair) {
            System.out.println("Escolha uma opção:");
            System.out.println("1 - Consultar saldo");
            System.out.println("2 - Depositar");
            System.out.println("3 - Sacar");
            System.out.println("4 - Transferir");
            System.out.println("5 - Sair");
            int opcao = sc.nextInt();

            switch (opcao) {
                case 1:
                    System.out.println("Saldo: " + conta.getSaldo());
                    break;
                case 2:
                    System.out.println("Digite o valor a ser depositado:");
                    double valorDeposito = sc.nextDouble();
                    conta.depositar(valorDeposito);
                    break;
                case 3:
                    System.out.println("Digite o valor a ser sacado:");
                    double valorSaque = sc.nextDouble();
                    if (conta.sacar(valorSaque)) {
                        System.out.println("Saque realizado com sucesso.");
                    } else {
                        System.out.println("Saldo insuficiente.");
                    }
                    break;
                case 4:
                    System.out.println("Digite o valor a ser transferido:");
                    double valorTrans = sc.nextDouble();
                    if (conta.sacar(valorTrans)) {
                        System.out.println("Transferência realizado com sucesso.");
                    } else {
                        System.out.println("Saldo insuficiente.");
                    }
                    break;
                case 5:
                    sair = true;
                    System.out.println("Volte sempre!");
                    break;
                default:
                    System.out.println("Opção inválida.");
            }
        }
    }
}
