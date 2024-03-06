public class ContaBancaria {
  private double saldo;

  public ContaBancaria() {
      this.saldo = 0;
  }

  public double getSaldo() {
      return saldo;
  }

  public void depositar(double valor) {
      this.saldo += valor;
  }

  public boolean sacar(double valor) {
      if (this.saldo >= valor) {
          this.saldo -= valor;
          return true;
      } else {
          return false;
      }
  }

  public boolean transferir(double valor, ContaBancaria contaDestino) {
      if (this.sacar(valor)) {
          contaDestino.depositar(valor);
          return true;
      } else {
          return false;
      }
  }
}