class Pessoa:
    def __init__(self,nome, idade):
        self.nome = nome
        self.idade = idade
    def falar (self):
        return f"Meu nome é {self.nome} e tenho {self.idade} anos."
    

nomePessoa = Pessoa("Thauan", 24)
print(nomePessoa.falar())