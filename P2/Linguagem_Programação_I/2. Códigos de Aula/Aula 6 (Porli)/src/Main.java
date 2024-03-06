public class Main {
    public static void main(String[] args) throws Exception {
       Mamifero m = new Mamifero();
       Ave a = new Ave();
       Reptil r = new Reptil();
       Peixe p = new Peixe();

       m.locomover();
       a.locomover();
       p.locomover();
       r.locomover();
    }
}
