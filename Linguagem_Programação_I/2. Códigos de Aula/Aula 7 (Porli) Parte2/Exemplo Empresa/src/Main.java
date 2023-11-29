import java.util.Scanner;
public class Main {
    public static void main(String[] args) throws Exception {
        Scanner sc = new Scanner(System.in);

        //Livro
        Livro l = new Livro();

        System.out.println("Qual o nome do livro?");
        l.setNome(sc.nextLine());

        System.out.println("Informe o valor do livro:");
        l.setPreco(sc.nextDouble()); 

        sc.nextLine(); //Limpando Buffer

        //Informações
        System.out.println("Nome do livro: " + l.getNome());
        System.out.println("Preço: " + l.getPreco());
        System.out.println("Preço com desconto de 10%: " + l.getPrecoFinal());

        //Eletronico
        Eletronico e = new Eletronico();

        System.out.println("Informe o nome do eletrônico:");
        e.setNome(sc.nextLine());

        System.out.println("Informe o valor do eletrônico:");
        e.setPreco(sc.nextDouble());
        
        sc.nextLine(); //Limpando Buffer

        //Informações
        System.out.println("Nome do eletrônico: " + e.getNome());
        System.out.println("Preço: " + e.getPreco());
        System.out.println("Preço com desconto de 10%: " + e.getPrecoFinal());

        //Roupas
        Roupas r = new Roupas();

        System.out.println("Informe o nome da roupa:");
        r.setNome(sc.nextLine());

        System.out.println("Informe o preço da roupa:");
        r.setPreco(sc.nextDouble());

        sc.nextLine(); //Limpando Buffer

        //Informações
        System.out.println("Nome da roupa: " + r.getNome());
        System.out.println("Preço atual: " + r.getPreco());
        System.out.println("Preço com desconto de 5%: " + r.getPrecoFinal());

        sc.close();
    }
    
}
