import numpy as np
class Pilha:
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.items = []

    def empilhar(self, item):
        if not self.is_full():
            self.items.append(item)
        else:
            print("A pilha está cheia. Não é possível empilhar o item.")

    def desempilhar(self):
        if not self.is_empty():
            return self.items.pop()
        else:
            print("A pilha está vazia. Não é possível desempilhar.")

    def is_full(self):
        return len(self.items) == self.capacidade

    def is_empty(self):
        return len(self.items) == 0

    def ver_topo(self):
        if not self.is_empty():
            return self.items[-1]
        else:
            print("A pilha está vazia. Não há topo para visualizar.")

    def visualizar(self):
            if not self.is_empty():
                print("Itens da pilha:")
                for item in self.items:
                    print(item)
            else:
                print("A pilha está vazia. Não há itens para visualizar.")

# Exemplo de uso:
pilha = Pilha(3)

pilha.empilhar(1)
pilha.empilhar(2)
pilha.empilhar(3)
pilha.empilhar(4)
pilha.empilhar(5)

pilha.visualizar()