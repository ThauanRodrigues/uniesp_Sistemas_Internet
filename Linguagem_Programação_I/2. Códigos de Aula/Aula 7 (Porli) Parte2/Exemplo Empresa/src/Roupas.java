public class Roupas extends Produtos{
  
  @Override
  double getPrecoFinal() {
    return getPreco() * 0.95; //desconto 5%
  }
}
