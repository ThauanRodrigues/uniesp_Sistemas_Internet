class Carro:
    def __init__(self,marca,modelo, ano):
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
    
    def detalhes(self):
        return f"A marca é {self.marca}, modelo {self.modelo} e ano {self.ano}"
    

carro = Carro("Honda", "Civic", 2023)

print (carro.detalhes())