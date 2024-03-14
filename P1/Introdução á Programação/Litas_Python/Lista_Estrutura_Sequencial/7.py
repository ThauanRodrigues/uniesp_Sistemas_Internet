'''
Faça um Programa que peça 2 números inteiros e um número real. Calcule e mostre:
1. o produto do dobro do primeiro com metade do segundo .
2. a soma do triplo do primeiro com o terceiro.
3. o terceiro elevado ao cubo
'''

n1 = int(input("Digite um número inteiro:"))
n2 = int(input("Digite o segundo númro inteiro:"))
n3 = float(input("Digite um número real:"))
print(f"O produto do dobro do primeiro com metade do segundo é: {(n1*2) * (n2/ 2)}")
print(f"A soma do triplo do primeiro com o terceiro é: {(n1*3) + n3}")
print(f"O terceiro elevado ao cubo é: {n3**3}")