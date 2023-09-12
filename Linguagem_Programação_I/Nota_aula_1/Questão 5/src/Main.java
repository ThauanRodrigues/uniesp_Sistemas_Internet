public class Main {
  public static void main(String[] args) {
      Biblioteca biblioteca = new Biblioteca();

      biblioteca.registrarLivro("O Senhor dos Anéis", "J.R.R. Tolkien");
      biblioteca.registrarUsuario("João", "123");

      biblioteca.realizarEmprestimo("O Senhor dos Anéis", "123");
      biblioteca.exibirEmprestimos();

      biblioteca.devolverLivro("O Senhor dos Anéis");
      biblioteca.exibirEmprestimos();
  }
}
