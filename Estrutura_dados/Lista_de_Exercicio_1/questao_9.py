'''
Escreva um programa que leia uma lista de nomes e retorne uma nova lista com apenas os nomes que 
começam com a letra 'A'.
'''

nomes = input("Digite uma lista de nomes separados por vírgula: ").split(",")


nova_lista = []

for nome in nomes:
    nome = nome.strip()
    if nome.startswith('A') or nome.startswith('a'):
        nova_lista = [].append(nome)

print("Nomes que começam com 'A':")
for nome in nova_lista:
    print(nome)
