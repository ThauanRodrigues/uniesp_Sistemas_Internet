class Funcionario:
    def __init__(self, nome, salario, cargo):
        self.nome = nome
        self.salario = salario
        self.cargo = cargo
    
    def aumentar_salario(self):
        porcetagem = (0.10 * self.salario)
        aumento = porcetagem + self.salario
        return f"{self.nome}, que ocupa o cargo de {self.cargo}, teve seu salario de R${self.salario:.2f} reais, \natualizado com o reajuste de 10% anual, ficou R${aumento:.2f} reais"


funcionario = Funcionario("Thauan", 7000, "Programador")
print(funcionario.aumentar_salario())