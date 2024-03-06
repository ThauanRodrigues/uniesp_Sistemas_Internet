public class Main {
    public static void main(String[] args){
        //Chamando o polimorfismo
        Polimorfismo p = new Polimorfismo();
        //Afinando
        p.afinar(new Harpa());
        p.afinar(new Violao());
        p.afinar(new Flauta());

        //Tocando
        p.tocar(new Harpa());
        p.tocar(new Violao());
        p.tocar(new Flauta());

        //Trocando corda
        p.trocar_corda(new Harpa());
        p.trocar_corda(new Violao());
    }
}
