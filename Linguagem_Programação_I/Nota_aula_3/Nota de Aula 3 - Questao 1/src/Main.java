public class Main {
    public static void main(String[] args) {

        Carro c1 = new Carro();

        c1.setMarca("Fiat");
        c1.setModelo("Uno");
        c1.setAnoFabricacao(2015);
        c1.setNumPortas(4);
        c1.imprimirDetalhes();

        Moto m1 = new Moto();

        m1.setMarca("Honda");
        m1.setModelo("CG 160");
        m1.setAnoFabricacao(2020);
        m1.setCilindradas(162);
        m1.imprimirDetalhes();
    }
}
