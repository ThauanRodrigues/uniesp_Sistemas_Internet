public class Eletronico extends Produtos implements Promocao {

  @Override
  public float promocao() {
    return 10;
  }
 
  @Override
  public double getValor() {
    return valor * (1 - promocao()  / 100);
  }

}
