class FilaAtendimentoBanco:
    def __init__(self):
      self.fila = [] #Criando um array vazio.
    
    def entrar_na_fila(self, cliente):
      self.fila += [cliente]
      print(f"Cliente '{cliente}' entrou na fila de atendimento do banco.")
    
    def atender_clientes(self):
        if not self.fila:
            print("Não há clientes na fila.")
        else:
            print("\nAtendendo clientes:")
            for i in range(len(self.fila)):
                cliente = self.fila[i]
                print(f"Atendendo cliente: {cliente}")
            self.fila = []  # Zerar a fila 

# Usando na Prática
fila_banco = FilaAtendimentoBanco()

fila_banco.entrar_na_fila("Cliente1")
fila_banco.entrar_na_fila("Cliente2")
fila_banco.entrar_na_fila("Cliente3")

fila_banco.atender_clientes()



