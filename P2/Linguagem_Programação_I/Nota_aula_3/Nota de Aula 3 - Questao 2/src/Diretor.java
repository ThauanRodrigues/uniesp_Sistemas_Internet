public class Diretor extends Funcionario {
    private int acoes;

    // Construtor
    public Diretor(String nome, double salario, int acoes) {
        super(nome, salario);
        this.acoes = acoes;
    }

    // Getters
    public int getAcoes() {
        return acoes;
    }
}
