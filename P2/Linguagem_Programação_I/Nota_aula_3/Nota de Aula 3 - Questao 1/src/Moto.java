public class Moto extends Veiculo {
    private int cilindradas;

    // Construtor
    public Moto() {

    }

    // Getters e setters
    public int getCilindradas() {
        return cilindradas;
    }

    public void setCilindradas(int cilindradas) {
        this.cilindradas = cilindradas;
    }

    // Métodos
    public void imprimirDetalhes() {
        System.out.println("======================================");
        System.out.println("Marca: " + marca);
        System.out.println("Modelo: " + modelo);
        System.out.println("Ano de fabricação: " + anoFabricacao);
        System.out.println("Número de portas: " + cilindradas);
        System.out.println("======================================");
    }
}
