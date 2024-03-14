'''
Faça um Programa que pergunte quanto você ganha por hora e o número de horas
trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês.
'''
salario_por_hora = float(input("Quanto você ganha quanto por hora ?"))
horas_trabalhadas = float(input("Quantas horas você trabalhou ?"))
salario_receber = salario_por_hora * horas_trabalhadas
print(f"Você recebe R$: {salario_receber:.2f} por mês")

