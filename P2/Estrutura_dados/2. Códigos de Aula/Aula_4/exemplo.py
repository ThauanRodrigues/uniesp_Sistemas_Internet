# Crie um programa para fazer a leitura de uma expressao e informar se a mesma apresenta o conjunto de (), {} e [] em numero corretos, Voce deve utilizar a estrutura de pilha para encontrar uma solução.
# c[d] (correto)
# a{b(c)d}e (correto)
# a{b(c]d}e (incorreto -] nao casa com (


def verifica_expressao(expressao):
    pilha = []
    mapeamento = {')': '(', '}': '{', ']': '['}

    for caracteres in expressao:
        if caracteres in '({[':
            pilha.append(caracteres)
        elif caracteres in ')}]':
            if not pilha or pilha[-1] != mapeamento[caracteres]:
                return False
            pilha.pop()

    return not pilha

expressao = input("Digite uma expressão: ")
if verifica_expressao(expressao):
    print("A expressão está correta.")
else:
    print("A expressão está incorreta.")