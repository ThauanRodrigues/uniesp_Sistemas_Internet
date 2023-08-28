# Faça um programa que leia uma lista de números e retorne a média dos números pares.

numeros_lista = [1, 2 , 5, 10, 12]

# Inicializando variáveis para calcular a soma e a quantidade de números pares
soma_pares = 0
quantidade_pares = 0

# Loop para calcular a soma e a quantidade de números pares
for num in numeros_lista:
    if num % 2 == 0:  # Verifica se o número é par
        soma_pares += num
        quantidade_pares += 1

# Calculando a média dos números pares (evitando divisão por zero)
if quantidade_pares > 0:
    media_pares = soma_pares / quantidade_pares
    print(f"A média dos números pares é: {media_pares:.2f}")
else:
    print("Não foram digitados números pares.")

