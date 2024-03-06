public class Cachorro extends Animal implements Corrida {
  private String raca;

  @Override
  public void emitirSom() {
    System.out.println("Au au");
  }

  

  @Override
  public void correr() {
    System.out.println("Correndo...");
    
  }



  public String getRaca() {
    return raca;
  }

  public void setRaca(String raca) {
    this.raca = raca;
  }

  
  
}
