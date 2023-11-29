class FilaPedidosOnline:
    def __init__(self):
        self.fila_pedidos = []

    def adicionar_pedidos(self, pedido):
        self.fila_pedidos += [pedido]
        print(f"Pedido online: '{pedido}' adicionado à fila de processamento.")
    
    def processar_pedidos(self):
        if not self.fila_pedidos: 
            print("Não há pedidos online para processar.")
        else:
            print("\nProcessando pedidos online:")
            for i in range(len(self.fila_pedidos)):
                pedido = self.fila_pedidos[i]
                print(f"Pedido online processado: {pedido}")
            self.fila_pedidos = [] #Limpando a Fila


#Exemplo na Prática

fila_pedidos_online = FilaPedidosOnline()

fila_pedidos_online.adicionar_pedidos('Pedido 1')
fila_pedidos_online.adicionar_pedidos('Pedido 2')
fila_pedidos_online.adicionar_pedidos('Pedido 3')

fila_pedidos_online.processar_pedidos()