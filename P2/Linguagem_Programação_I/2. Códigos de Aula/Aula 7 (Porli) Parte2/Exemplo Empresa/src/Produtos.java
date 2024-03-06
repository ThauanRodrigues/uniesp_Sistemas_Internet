public abstract class Produtos {
  //Atributos
  protected String nome;
  protected double preco;

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
  abstract double getPrecoFinal();
}
