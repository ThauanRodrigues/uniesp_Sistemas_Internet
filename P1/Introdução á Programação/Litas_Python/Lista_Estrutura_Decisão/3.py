'''
As maçãs custam 1,30 cada, se forem compradas menos de uma dúzia, e 1,00 se
forem compradas pelo menos 12. Escreva um programa que leia o número de maçãs
compradas, calcule e escreva o custo total da compra.
'''
quantidade = int(input('Quantas maçãs deseja comprar? '))
if quantidade >= 12:
     print(f"{quantidade} maças custou o total de: R${quantidade * 1.00:.2f} reais")
else:
     print(f"{quantidade} maças custou o total de: R${quantidade * 1.30:.2f} reais")
