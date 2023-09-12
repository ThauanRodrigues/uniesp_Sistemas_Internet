import java.util.*;

public class Biblioteca {
    private Map<String, String> livros = new HashMap<>();
    private Map<String, String> usuarios = new HashMap<>();
    private Map<String, String> emprestimos = new HashMap<>();

    public void registrarLivro(String titulo, String autor) {
        livros.put(titulo, autor);
    }

    public void registrarUsuario(String nome, String id) {
        usuarios.put(id, nome);
    }

    public void realizarEmprestimo(String titulo, String idUsuario) {
        if (livros.containsKey(titulo) && usuarios.containsKey(idUsuario)) {
            emprestimos.put(titulo, idUsuario);
        }
    }

    public void devolverLivro(String titulo) {
        emprestimos.remove(titulo);
    }

    public void exibirEmprestimos() {
        for (Map.Entry<String, String> entry : emprestimos.entrySet()) {
            System.out.println("Livro: " + entry.getKey() + ", Usuário: " + entry.getValue());
        }
    }
}


