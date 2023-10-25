public abstract class Produtos {
  protected String nome;
  protected double preco;
  protected double valor;

  public String getNome() {
    return nome;
  }
  public void setNome(String nome) {
    this.nome = nome;
  }
  public double getPreco() {
    return preco;
  }
  public void setPreco(double preco) {
    this.preco = preco;
  }
  public abstract double getValor();
  
}
