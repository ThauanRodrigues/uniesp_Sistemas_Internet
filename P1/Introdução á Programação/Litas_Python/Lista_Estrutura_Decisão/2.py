'''
Solicite ao usuário um valor numérico, inteiro ou real, e escrever se é positivo ou
negativo (considere o valor zero como positivo).
'''

valor = int(input("Digite um valor:"))
if valor > 0:
    print("O valor é positivo.")
else:
    print("O valor é negativo.")