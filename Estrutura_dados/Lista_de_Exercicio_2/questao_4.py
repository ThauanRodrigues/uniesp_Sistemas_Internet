class ContaBancaria:
    def __init__(self, titular,saldo=0):
        self.saldo = saldo
        self.titular = titular

    def depositar (self,valor):
        if valor > 0:
            self.saldo += valor
            return f"Depósito de R${valor:.2f} realizado com sucesso. Novo saldo: R${self.saldo:.2f}"
        else:
            return "O valor do depósito inválido"
        

    def sacar (self, valor):
        if valor > 0 :
          if self.saldo >= valor:
            self.saldo -= valor
            return f"Saque de R${valor:.2f} realizado com sucesso. Novo saldo: R${self.saldo:.2f}"
          else:
              return "Saldo insuficiente!"
        else:
          return "O valor do saque inválido"
        
conta = ContaBancaria("Thauan", 2500)
print(conta.depositar(500))
print(conta.sacar(200))

