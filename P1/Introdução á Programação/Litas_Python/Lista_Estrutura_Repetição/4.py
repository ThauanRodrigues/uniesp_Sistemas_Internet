'''
Faça um programa que receba um número e que calcule e mostre a tabuada desse número.
'''
numero = int(input("Digite um número: "))
print(f"A tabuada do numero: {numero}")
for x in range(1, 11):
    print(f"{numero} x {x} = {numero * x}")
