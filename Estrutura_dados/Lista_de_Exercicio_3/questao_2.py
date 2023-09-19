# Escreva uma função que calcula o fatorial de um número inteiro positivo fornecido pelo usuário.

def calcular_fatorial(x):
    if x < 0:
        return "Apenas numeros positivos!"
    elif x == 0:
        return 1
    else:
        fatorial = 1
        for i in range(1, x + 1):
            fatorial *= i
        return fatorial

# Solicita ao usuário que insira o número.
numero = int(input("Digite um número inteiro positivo: "))

# Chama a função para calcular o fatorial
resultado = calcular_fatorial(numero)
print(f"O fatorial de {numero} é {resultado}")