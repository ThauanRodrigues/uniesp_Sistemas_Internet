# Escreva um programa que recebe uma string e conta a quantidade de vogais (a, e, i, o, u) presentes nela.

def contar_vogais(string):
    # Inicializa um contador de vogais
    contador = 0

    # Converte a string para letras minúsculas para garantir a contagem correta
    string = string.lower()

    # Percorre a string e verifica cada caractere
    for caractere in string:
        if caractere in 'aeiou':
            contador += 1

    return contador

# Solicita ao usuário que digite uma string
entrada = input("Digite uma string: ")

# Chama a função contar_vogais para contar as vogais na string
quantidade_vogais = contar_vogais(entrada)

# Exibe o resultado
print("A quantidade de vogais na string é:", quantidade_vogais)