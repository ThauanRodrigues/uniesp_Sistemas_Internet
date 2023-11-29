class EditorDeTexto:
    def __init__(self):
        self.texto = ""
        self.historico = []
        self.indice_atual = -1

    def adicionar_texto(self, novo_texto):
        if self.indice_atual < len(self.historico) - 1:
            # Se houver comandos após o comando atual, remova-os
            self.historico = self.historico[:self.indice_atual + 1]

        # Salva o estado atual do texto no histórico
        self.historico += [(self.texto)]
        self.indice_atual += 1

        # Adiciona o novo texto
        self.texto += novo_texto
        print(f"Texto atual: {self.texto}")

    def desfazer(self):
        if self.indice_atual > 0:
            # Move para o estado anterior do texto no histórico
            self.indice_atual -= 1
            self.texto = self.historico[self.indice_atual]
            print(f"Desfazendo para: {self.texto}")
        else:
            print("Nada mais para desfazer.")

    def refazer(self):
        if self.indice_atual < len(self.historico) - 1:
            # Move para o próximo estado do texto no histórico
            self.indice_atual += 1
            self.texto = self.historico[self.indice_atual]
            print(f"Refazendo para: {self.texto}")
        else:
            print("Nada mais para refazer.")

# Exemplo na Pratica
editor = EditorDeTexto()

editor.adicionar_texto("Olá, ")
editor.adicionar_texto("mundo!")
editor.desfazer()
editor.refazer()
editor.adicionar_texto(" Isso é um teste.")
editor.desfazer()
editor.desfazer()
editor.refazer()
