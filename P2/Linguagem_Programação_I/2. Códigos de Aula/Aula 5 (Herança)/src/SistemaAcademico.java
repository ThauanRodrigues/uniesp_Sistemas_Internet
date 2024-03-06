import java.util.Scanner;

public class SistemaAcademico {
    
   public static void main(String[] args) {

       Scanner scanner = new Scanner(System.in);
       int opcao;
       
       do {
           System.out.println("Qual cadastro você deseja realizar? Digite 1 para professor, 2 para aluno, 3 para sair");
           opcao = scanner.nextInt();
           
           switch (opcao) {
               case 1:
                   Professor professor = new Professor();
                   //Nome do prof
                   System.out.println("Digite o nome do professor:");
                   professor.setNome(scanner.next());
                   //Idade do prof
                   System.out.println("Digite a idade do professor:");
                   professor.setIdade(scanner.nextInt());
                   //Especialização do prof
                   System.out.println("Digite a especialização do professor:");
                   professor.setEspecializacao(scanner.next());
                   //Salário do prof
                   System.out.println("Digite o salário do professor:");
                   professor.setSalario(scanner.nextDouble());
                   //Informações do Professor
                   System.out.println("Professor cadastrado com sucesso!");
                   System.out.println("Nome: " + professor.getNome());
                   System.out.println("Idade: " + professor.getIdade());
                   System.out.println("Especialização: " + professor.getEspecializacao());
                   System.out.println("Salário: " + professor.getSalario());
                   break;
               case 2:
                   Aluno aluno = new Aluno();
                   //Nome do Aluno
                   System.out.println("Digite o nome do aluno:");
                   aluno.setNome(scanner.next());
                   //Idade do Aluno
                   System.out.println("Digite a idade do aluno:");
                   aluno.setIdade(scanner.nextInt());
                   //Nota1 do Aluno
                   System.out.println("Digite a primeira nota do aluno:");
                   aluno.setNota1(scanner.nextDouble());
                   //Nota1 do Aluno
                   System.out.println("Digite a segunda nota do aluno:");
                   aluno.setNota2(scanner.nextDouble());
                   //Media
                   aluno.setMedia((aluno.getNota1() + aluno.getNota2()) / 2);
                   //Informação do Aluno
                   System.out.println("Aluno cadastrado com sucesso!");
                   System.out.println("Nome: " + aluno.getNome());
                   System.out.println("Idade: " + aluno.getIdade());
                   System.out.println("Média: " + aluno.getMedia());
                   break;
               case 3:
                    System.out.println("Saindo do sistema...");
                    break;
               default:
                    System.out.println("Opção inválida!");
                    break;
           }
       } while (opcao != 3);
       
       scanner.close();
   }
}
