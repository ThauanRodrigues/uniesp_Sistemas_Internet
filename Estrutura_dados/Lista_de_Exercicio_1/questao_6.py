'''
Escreva um programa que peça um número inteiro positivo ao usuário e calcule o fatorial desse 
número.
'''

numeroInteiro = int(input("Digite um número inteiro:"))

if numeroInteiro < 0:
    print("O fatorial não está definido para números negativos.")
elif numeroInteiro == 0:
    print("O fatorial de 0 é 1.")
else:
    fatorial = 1
    for i in range(1, numeroInteiro + 1):
        fatorial *= i
    print(f"O fatorial de {numeroInteiro} é {fatorial}.")

