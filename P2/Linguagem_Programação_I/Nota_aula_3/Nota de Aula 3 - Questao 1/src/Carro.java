public class Carro extends Veiculo {
    private int numPortas;

    // Construtor
    public Carro() {

    }

    // Getters e setters
    public int getNumPortas() {
        return numPortas;
    }

    public void setNumPortas(int numPortas) {
        this.numPortas = numPortas;
    }

    // Métodos
    public void imprimirDetalhes() {
        System.out.println("======================================");
        System.out.println("Marca: " + marca);
        System.out.println("Modelo: " + modelo);
        System.out.println("Ano de fabricação: " + anoFabricacao);
        System.out.println("Número de portas: " + numPortas);
        System.out.println("======================================");
    }
}
