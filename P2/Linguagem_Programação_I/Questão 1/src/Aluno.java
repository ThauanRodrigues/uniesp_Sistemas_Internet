public class Aluno {
  String nome;
  int n1, n2, n3;

    public double media(double n1, double n2, double n3){
      double media = (n1+n2+n3)/3;

      if (media >= 7) {
        System.out.println("Aprovado");
      }
      else if (media >= 5 && media <= 6) {
        System.out.println("Recuperação");
      }
      else{System.out.println("Reprovado");
      }
    
      return media;

  }
} 
