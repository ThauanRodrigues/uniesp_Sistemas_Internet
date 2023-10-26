public class Harpa extends Instrumento implements TrocarCorda {

  @Override
  public void afinar() {
    System.out.println("Afinando corda da Harpa...");
  }

  @Override
  public void tocar() {
    System.out.println("Tocando a Harpa...");
  }

  @Override
  public void trocar_corda() {
    System.out.println("Trocando corda da Harpa...");
  }
  
}
