"""Imagine uma árvore binária representando uma árvore genealógica. 
Cada nó possui informações  sobre um membro da família.
Desenvolva um código em Python para criar e imprimir essa árvore."""

class No:
    def __init__(self, nome, ano_nascimento, filhos = None):
        self.nome = nome
        self.ano_nascimento = ano_nascimento
        self.filhos = filhos if filhos is not None else []

    def adicionar_filho(self, filho):
        self.filhos.append(filho)

def imprimir_arvore(no, nivel=0):
    if no is not None:
        print("  " * nivel + f"{no.nome} ({no.ano_nascimento})")
        for filho in no.filhos:
            imprimir_arvore(filho, nivel + 1)

# Criando a árvore genealógica
avo = No("Avo", 1920, [])
filho1 = No("Filho 1", 1950, [])
filho2 = No("Filho 2", 1955, [])
neto1 = No("Neto 1", 1980, [])
neto2 = No("Neto 2", 1985, [])
neto3 = No("Neto 3", 1990, [])
neto4 = No("Neto 4", 1995, [])

avo.adicionar_filho(filho1)
avo.adicionar_filho(filho2)
filho1.adicionar_filho(neto1)
filho1.adicionar_filho(neto2)
filho2.adicionar_filho(neto3)
filho2.adicionar_filho(neto4)


# Imprimindo a árvore genealógica
imprimir_arvore(avo)