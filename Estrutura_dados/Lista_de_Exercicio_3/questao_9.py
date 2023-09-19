# Crie uma calculadora que realiza operações de adição, subtração, multiplicação e divisão, com base na escolha do usuário.

# Função para realizar a adição
def adicao(a, b):
    return a + b

# Função para realizar a subtração
def subtracao(a, b):
    return a - b

# Função para realizar a multiplicação
def multiplicacao(a, b):
    return a * b

# Função para realizar a divisão
def divisao(a, b):
    if b == 0:
        return "Erro! Divisão por zero."
    else:
        return a / b

print("Escolha uma operação:")
print("1. Adição")
print("2. Subtração")
print("3. Multiplicação")
print("4. Divisão")

# Solicita ao usuário que insira a opção desejada
opcao = input("Digite o número da operação desejada: ")

# Solicita ao usuário que insira os números para a operação
numero1 = float(input("Digite o primeiro número: "))
numero2 = float(input("Digite o segundo número: "))

# Realiza a operação com base na escolha do usuário
if opcao == '1':
    resultado = adicao(numero1, numero2)
    operacao = "adição"
elif opcao == '2':
    resultado = subtracao(numero1, numero2)
    operacao = "subtração"
elif opcao == '3':
    resultado = multiplicacao(numero1, numero2)
    operacao = "multiplicação"
elif opcao == '4':
    resultado = divisao(numero1, numero2)
    operacao = "divisão"
else:
    resultado = "Opção inválida"
    operacao = ""

# Exibe o resultado da operação
if operacao:
    print(f"O resultado da {operacao} é: {resultado}")
else:
    print(resultado)