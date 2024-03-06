class NavegadorWeb:
    def __init__(self):
        self.historico = []
        self.indice_atual = -1

    def visitar_pagina(self, pagina):
        if self.indice_atual < len(self.historico) - 1:
            # Se houver páginas no histórico após a página atual, remova-as
            self.historico = self.historico[:self.indice_atual + 1]

        self.historico += [pagina]
        self.indice_atual += 1 
        print(f"Página '{pagina}' visitada.")


    def voltar(self):
        if self.indice_atual > 0:
            self.indice_atual -= 1
            print(f"\nVoltando para a página '{self.historico[self.indice_atual]}'.")

    def avancar(self):
        if self.indice_atual < len(self.historico) - 1:
            self.indice_atual += 1
            print(f"\nIndo para a página '{self.historico[self.indice_atual]}'.")

# Exemplo na Pratica
navegador = NavegadorWeb()

navegador.visitar_pagina("www.google.com")
navegador.visitar_pagina("https://www.linkedin.com/in/thauan-rodrigues-85438717b/")
navegador.visitar_pagina("https://github.com/ThauanRodrigues")

navegador.voltar()
navegador.avancar()