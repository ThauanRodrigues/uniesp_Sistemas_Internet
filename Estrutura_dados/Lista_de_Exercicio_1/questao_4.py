#Crie um programa que leia uma lista de números e exiba o maior e o menor valor da lista.

# Pedindo para o usuário digitar a lista de números separados por espaço
numeros = input("Digite uma lista de números separados por espaço: ")

# Dividindo a string em números individuais e convertendo para uma lista de inteiros
numeros_lista = [int(num) for num in numeros.split()]

# Inicializando as variáveis para armazenar o maior e o menor valor
maior_valor = numeros_lista[0]
menor_valor = numeros_lista[0]

# Loop para encontrar o maior e o menor valor na lista
for num in numeros_lista:
    if num > maior_valor:
        maior_valor = num
    if num < menor_valor:
        menor_valor = num

# Exibindo o maior e o menor valor
print(f"O maior valor da lista é: {maior_valor}")
print(f"O menor valor da lista é: {menor_valor}")




