#Lista Sequencial não Ordenada
import numpy as np

class Listasequencial:
    #Criando o construtor
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.ultima_posicao = -1
        self.valores = np.empty(self.capacidade, dtype=int)
    #Criando a função que imprime na tela
    def imprime(self):
        if self.ultima_posicao == -1:
            print("O vetor está vazio")
        else:
            for i in range (self.ultima_posicao +1):
                print(i, "-", self.valores[i])
    #Criando a função para inserir 
    def insere(self, valor):
        if self.ultima_posicao == self.capacidade -1:
            print("Capacidade máxima atingida")
        else:
            self.ultima_posicao += 1
            self.valores[self.ultima_posicao] = valor
    #Crindo a função pesquisar um item na lista
    def pesquisar (self, valor):
        for i in range(self.ultima_posicao + 1):
            if valor == self.valores[i]:
                return i
        return -1
    #Excluindo um objeto na lista
    def excluir(self, valor):
        posicao = self.pesquisar(valor)
        if posicao == -1:
            return -1
        else:
            for i in range(posicao, self.ultima_posicao):
                self.valores[i] = self.valores[i + 1]
            self.ultima_posicao -= 1

#Criando um objeto
x=Listasequencial(5)
#Inserindo os valores na minha lista
print("Inserindo os valores \n\n")
x.insere(9)
x.insere(5)
x.insere(15)
x.insere(25)
x.insere(55)

#Chamando o método imprimir
x.imprime()
print(" Imprimindo os valores... \n\n ")

#Chamando o método pesquisar para verificar se existe um valor
print("Pesquisando valores...")
print(f'A posição do valor 7 foi de {x.pesquisar(7)}')

#Excluindo um valor da lista
print("\n Excluindo um valor da lista ... \n\n")
x.excluir(5)
print("--------------------------")
x.imprime()


