public class Violao extends Instrumento implements TrocarCorda {

  @Override
  public void afinar() {
  System.out.println("Afinando a corda do Violão...");

  }

  @Override
  public void tocar() {
  System.out.println("Tocando o Violão...");
  }

  @Override
  public void trocar_corda() {
    System.out.println("Trocando corda do Violão...");
    
  }
  
}
