package Questão_6;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        List<Aluno> alunos = new ArrayList<>();
        Scanner tr = new Scanner(System.in);

        while (true) {
            System.out.println("Digite o nome do aluno:");
            String nome = tr.nextLine();
            if (nome.equalsIgnoreCase("sair")) break;

            System.out.println("Digite as três notas do aluno:");
            System.out.println("Nota 1:");
            int nota1 = tr.nextInt();
            System.out.println("Nota 2:");
            int nota2 = tr.nextInt();
            System.out.println("Nota 3:");
            int nota3 = tr.nextInt();
            System.out.println("Aluno e notas cadastrada com sucesso!");
            tr.nextLine();

            alunos.add(new Aluno(nome, nota1, nota2, nota3));
        }

        double somaDasMedias = 0;
        List<String> aprovados = new ArrayList<>();
        List<String> reprovados = new ArrayList<>();

        for (Aluno aluno : alunos) {
            double media = aluno.media();
            somaDasMedias += media;
            System.out.println("Aluno: " + aluno.nome + ", Média: " + media);

            if (media >= 6) {
                aprovados.add(aluno.nome);
            } else {
                reprovados.add(aluno.nome);
            }
        }

        System.out.println("Média geral da turma: " + (somaDasMedias / alunos.size()));
        System.out.println("Quantidade de alunos aprovados: " + aprovados.size());
        System.out.println("Quantidade de alunos reprovados: " + reprovados.size());
        System.out.println("Nomes dos alunos aprovados: " + aprovados);
        System.out.println("Nomes dos alunos reprovados: " + reprovados);

        tr.close();
    }
}