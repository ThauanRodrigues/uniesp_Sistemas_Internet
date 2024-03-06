# Escreva um programa que recebe um número inteiro positivo e calcula a soma de seus dígitos.

numero = int(input("Digite um número inteiro positivo: "))

# Verifique se o número é positivo
if numero < 0:
    print("Por favor, digite um número inteiro positivo.")
else:
    # Inicialize a variável para armazenar a soma dos dígitos
    soma_digitos = 0

    # Converta o número em uma string para percorrer seus dígitos
    numero_str = str(numero)

    # Percorra cada dígito na string e some-os
    for digito in numero_str:
        soma_digitos += int(digito)

    print("A soma dos dígitos de", numero, "é", soma_digitos)