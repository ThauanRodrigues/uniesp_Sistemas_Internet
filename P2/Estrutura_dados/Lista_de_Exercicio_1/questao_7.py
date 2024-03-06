# Crie um programa que imprima a sequência de Fibonacci até um valor inserido pelo usuário.

valor = int(input("Informe um valor:"))

a, b = 0, 1


print(a, b, end=" ")


while b < valor:
    c = a + b
    print(c, end=" ")
    a, b = b, c

