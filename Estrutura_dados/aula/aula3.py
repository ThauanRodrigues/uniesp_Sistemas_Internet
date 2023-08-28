import numpy as np

class Listasequencial:
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.ultima_posicao = -1
        self.valores = np.empty(self.capacidade, dtype=int)

    def imprime(self):
        if self.ultima_posicao == -1:
            print("O vetor está vazio")
        else:
            for i in range (self.ultima_posicao +1):
                print(i, "-", self.valores[i])

    def insere(self, valor):
        if self.ultima_posicao == self.capacidade -1:
            print("Capacidade máxima atingida")
        else:
            self.ultima_posicao += 1
            self.valores[self.ultima_posicao] = valor

    def pesquisar (self, valor):
        for i in range(self.ultima_posicao + 1):
            if valor == self.valores[i]:
                return i
        return -1
    def excluir(self, valor):
        posicao = self.pesquisar(valor)
        if posicao == -1:
            return -1
        else:
            for i in range(posicao, self.ultima_posicao):
                self.valores[i] = self.valores[i + 1]
            self.ultima_posicao -= 1


x=Listasequencial(5)
x.insere(9)
x.insere(5)
x.insere(15)
x.insere(25)
x.insere(55)
x.imprime()
print(x.pesquisar(25))
x.excluir(5)
x.imprime()


