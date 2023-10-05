public class Funcionario {
    protected String nome;
    protected double salario;

    // Construtor
    public Funcionario(String nome, double salario) {
        super();
        this.nome = nome;
        this.salario = salario;
    }

    // Getters
    public String getNome() {
        return nome;
    }

    public double getSalario() {
        return salario;
    }
}
