class FilaDeImpressao:
    def __init__(self):
        self.fila = []

    def adicionar_documento(self, documento):
        self.fila += [documento]
        print(f"Documento '{documento}' adicionado à fila de impressão.")

    def imprimir_documentos(self):
        if not self.fila:
            print("A fila de impressão está vazia.")
        else:
            tamanho_fila = len(self.fila)
            for i in range(tamanho_fila):
                documento = self.fila[i]
                print(f"\nImprimindo documento: {documento}")

# Usando na Prática 
fila_impressao = FilaDeImpressao()

fila_impressao.adicionar_documento("Documento1")
fila_impressao.adicionar_documento("Documento2")
fila_impressao.adicionar_documento("Documento3")

fila_impressao.imprimir_documentos()
