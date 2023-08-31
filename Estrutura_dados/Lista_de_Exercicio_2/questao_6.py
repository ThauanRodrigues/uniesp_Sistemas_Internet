class Produto:
    def __init__(self,nome, preco, quantidade):
        self.nome = nome
        self.preco = preco
        self.quantidade = quantidade
    
    def calcular_total(self):
        total = self.preco * self.quantidade
        return f"O preço total é de: {total} "
    


produto = Produto("Régua", 3.99, 6)
print(produto.calcular_total())