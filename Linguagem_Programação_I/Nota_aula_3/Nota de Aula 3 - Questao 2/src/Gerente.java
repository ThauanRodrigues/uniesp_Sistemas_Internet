public class Gerente extends Funcionario {
    private String departamento;

    // Construtor
    public Gerente(String nome, double salario, String departamento) {
        super(nome, salario);
        this.departamento = departamento;
    }

    // Getters
    public String getDepartamento() {
        return departamento;
    }

    // Métodos
    public void calcularBonus() {
        salario = salario + (salario * 0.10);
    }
}
