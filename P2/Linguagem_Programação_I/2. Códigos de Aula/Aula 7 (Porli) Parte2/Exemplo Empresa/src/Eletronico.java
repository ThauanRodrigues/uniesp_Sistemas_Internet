public class Eletronico extends Produtos{
  @Override
  double getPrecoFinal() {
    return getPreco() * 0.9; //desconto 10%
  }
}
