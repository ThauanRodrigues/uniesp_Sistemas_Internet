public class Roupa extends Produtos implements Promocao {

  @Override
  public double getValor() {
    return valor * (1 - promocao()  / 100);
  }

  @Override
  public float promocao() {
    return 5;
  }
  
  
}
