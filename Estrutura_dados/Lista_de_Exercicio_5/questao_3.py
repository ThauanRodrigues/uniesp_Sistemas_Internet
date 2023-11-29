class GerenciadorPedidosRestaurante:
    def __init__(self):
        self.fila_pedidos = []

    def fazer_pedido(self, pedido):
        self.fila_pedidos += [pedido]
        print(f"Pedido '{pedido}' adicionado à fila.")

    def processar_pedidos(self):
        if not self.fila_pedidos:
            print("Não há pedidos para processar.")
        else:
            print("\nProcessando pedidos:")
            for i in range(len(self.fila_pedidos)):
                pedido = self.fila_pedidos[i]
                print(f"Pedido: {pedido}")
            self.fila_pedidos = []  # Limpando a fila 

# Usando na Prática
gerenciador_pedidos = GerenciadorPedidosRestaurante()

gerenciador_pedidos.fazer_pedido("Hamburguer")
gerenciador_pedidos.fazer_pedido("Pizza")
gerenciador_pedidos.fazer_pedido("Salada")

gerenciador_pedidos.processar_pedidos()
