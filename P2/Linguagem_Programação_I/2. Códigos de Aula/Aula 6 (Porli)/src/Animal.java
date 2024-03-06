public abstract class Animal {
  //Atributos de Animal
  protected double peso;
  protected int idade;
  protected int membros;
  //Métodos de Animal
  public  abstract void locomover();
  public abstract void alimentar();
  public abstract void emitirSom();

  public double getPeso() {
    return peso;
  }
  public void setPeso(double peso) {
    this.peso = peso;
  }
  public int getIdade() {
    return idade;
  }
  public void setIdade(int idade) {
    this.idade = idade;
  }
  public int getMembros() {
    return membros;
  }
  public void setMembros(int membros) {
    this.membros = membros;
  }

}
