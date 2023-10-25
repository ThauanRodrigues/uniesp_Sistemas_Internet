public class Livro extends Produtos implements Promocao {

  @Override
  public float promocao() {
    return 10;
  }
  

  @Override
  public String getNome() {
    // TODO Auto-generated method stub
    return super.getNome();
  }


  @Override
  public double getPreco() {
    // TODO Auto-generated method stub
    return super.getPreco();
  }


  @Override
  public void setNome(String nome) {
    // TODO Auto-generated method stub
    super.setNome(nome);
  }


  @Override
  public void setPreco(double preco) {
    // TODO Auto-generated method stub
    super.setPreco(preco);
  }


  @Override
  public double getValor() {
    return valor * (1 - promocao()  / 100);
  }
  
}
