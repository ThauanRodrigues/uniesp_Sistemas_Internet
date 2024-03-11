package Questão_6;

public class Aluno {
    String nome;
    int n1, n2, n3;

    Aluno(String nome, int n1, int n2, int n3) {
        this.nome = nome;
        this.n1 = n1;
        this.n2 = n2;
        this.n3 = n3;
    }

    double media() {
        return (n1 + n2 + n3) / 3;
    }
}
