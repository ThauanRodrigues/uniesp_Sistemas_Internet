'''
Faça um programa que lê as duas notas parciais obtidas por um aluno numa disciplina
ao longo de um semestre, e calcule a sua média. A atribuição de conceitos obedece à
tabela abaixo:
Média de Aproveitamento Conceito
Entre 9.0 e 10.0 A
Entre 7.5 e 9.0 B
Entre 6.0 e 7.5 C
Entre 4.0 e 6.0 D
Entre 4.0 e zero E
O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a
mensagem “APROVADO” se o conceito for A, B ou C ou “REPROVADO” se o
conceito for D ou E
'''

n1 = float(input("Digite sua primeira nota:"))
n2 = float(input("Digite a sua segunda nota:"))
media = (n1 + n2) / 2

if media >= 9:
    conceito = "A"
elif media >= 7.5:
    conceito = "B"
elif media >= 6:
    conceito = "C"
elif media > 4:
    conceito = "D"
else:
    conceito = "E"

print(f"Notas: {n1} e {n2}")
print(f"A sua média foi: {media}")
print(f"O conceito é: {conceito}")

if conceito in ["A","B", "C"]:
    print("APROVADO")
else:
    print("REPROVADO")
