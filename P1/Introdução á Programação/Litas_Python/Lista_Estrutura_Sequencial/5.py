'''
Faça um Programa que peça a temperatura em graus Fahrenheit, transforme e mostre
a temperatura em graus Celsius.
1. C = 5 * ((F-32) / 9).
'''

Temperatura = float(input("Informe a temperatura em Fahrenheit:"))
C = 5 * ((Temperatura - 32) / 9)
print(f"A temperatura em graus celsiues é: {C}")