public abstract class Animal {
  //Atributos
  protected String nome;
  protected int idade;

  //Método
  public abstract void emitirSom();

  //Gets e Sets

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public int getIdade() {
    return idade;
  }

  public void setIdade(int idade) {
    this.idade = idade;
  }

  
}
