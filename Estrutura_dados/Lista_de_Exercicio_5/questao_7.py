class CalculadoraRPN:
    def __init__(self):
        self.pilha = []
        self.operadores = {'+': lambda x, y: x + y,
                           '-': lambda x, y: x - y,
                           '*': lambda x, y: x * y,
                           '/': lambda x, y: x / y}

    def avaliar_expressao(self, expressao):
        tokens = expressao.split()

        for token in tokens:
            if token.isdigit() or (token[0] == '-' and token[1:].isdigit()):
                # Se o token é um número ou um número negativo
                self.pilha.append(float(token))
            elif token in self.operadores:
                # Se o token é um operador
                if len(self.pilha) >= 2:
                    # Realiza a operação usando os dois últimos operandos da pilha
                    y = self.pilha[-1]
                    x = self.pilha[-2]
                    del self.pilha[-2:]  # Remove os dois últimos elementos da pilha
                    resultado = self.operadores[token](x, y)
                    self.pilha.append(resultado)
                else:
                    print("Erro: Faltam operandos para a operação.")
                    return
            else:
                print(f"Erro: Token inválido - {token}.")
                return

        if len(self.pilha) == 1:
            resultado_final = self.pilha[0]
            print(f"Resultado final: {resultado_final}")
        else:
            print("Erro: A expressão está incompleta ou mal formada.")

# Exemplo de uso
calculadora = CalculadoraRPN()

expressao1 = "3 4 + 5 *"
expressao2 = "10 2 /"
expressao3 = "5 2 4 * + 7 -"

calculadora.avaliar_expressao(expressao1)
calculadora.avaliar_expressao(expressao2)
calculadora.avaliar_expressao(expressao3)
