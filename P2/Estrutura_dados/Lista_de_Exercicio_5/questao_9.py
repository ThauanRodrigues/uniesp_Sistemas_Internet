class OperadoresMatematicos:
    def __init__(self):
        self.pilha_operadores = []

    def identificar_operadores(self, expressao):
        operadores = set("+-*/^()")

        for caractere in expressao:
            if caractere in operadores:
                self.pilha_operadores.append(caractere)

        return set(self.pilha_operadores)

# Exemplo na Pratica
expressao = "(2+3)*(8-9)/(7^3)"

operadores_matematicos = OperadoresMatematicos()
operadores_identificados = operadores_matematicos.identificar_operadores(expressao)

print(f"Operadores matemáticos na expressão: {operadores_identificados}")
