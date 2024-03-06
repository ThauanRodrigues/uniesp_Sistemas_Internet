import numpy as np

class Listasequencial:

    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.ultima_posicao = -1
        self.valores = np.empty(self.capacidade, dtype=int)

    def imprime(self):
        if self.ultima_posicao == -1:
            print('O vetor está vazio')
        else:
            for i in range(self.ultima_posicao + 1):
                print(i, ' - ', self.valores[i])

    def insere(self, valor):
        if self.ultima_posicao == self.capacidade - 1:
            print('Capacidade máxima atingida')
        else:
            self.ultima_posicao += 1
            self.valores[self.ultima_posicao] = valor

    def pesquisar(self, valor):
        for i in range(self.ultima_posicao + 1):
            if (valor==self.valores[i]):
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

# instanciando um objeto
p1 = Listasequencial(5)
# Inserindo os valores na minha lista
print('Inserindo os valores ...\n\n')
p1.insere(4)
p1.insere(3)
p1.insere(5)
p1.insere(7)
p1.insere(8)
# Chamando o método imprimir
print('Imprimindo os valores ...')
p1.imprime()

# Chamando o método pesquisar para verificar se existe um valor
print('Pesquisando valores ...')
print(f'A posição do valor 7 foi de {p1.pesquisar(7)}')

# Excluindo um valor da minha lista
print('Excluindo um valores ...')

p1.excluir(5)
print('--------------------')
p1.imprime()
