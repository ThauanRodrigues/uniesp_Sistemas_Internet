public class Polimorfismo {
  public void tocar( Instrumento i){
    i.tocar();
  }

  public void afinar(Instrumento i){
    i.afinar();
  }

  public void trocar_corda(TrocarCorda c){
    c.trocar_corda();
  }
}
