public class Main {
    public static void main(String[] args) throws Exception {
        Cachorro c = new Cachorro();
        Passaro p = new Passaro();

        c.emitirSom();
        c.correr();

        p.emitirSom();
        p.voar();
    }
}
