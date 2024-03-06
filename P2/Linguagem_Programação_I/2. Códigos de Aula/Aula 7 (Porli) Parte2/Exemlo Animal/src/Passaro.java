public class Passaro extends Animal implements Voando {

  @Override
  public void emitirSom() {
    System.out.println("Som de passaro");
  }

  @Override
  public void voar() {
    System.out.println("Voando");
    
  }
  
  
}
