#  Escreva uma função que gera a sequência de Fibonacci até um determinado número de termos especificado pelo usuário. 

def gerar_fibonacci(numero_de_termos):
    # Inicialize a lista para armazenar os termos da sequência
    fibonacci = []
    
    # Inicialize os primeiros dois termos
    a, b = 0, 1

    # Adicione os primeiros dois termos à lista
    fibonacci.append(a)
    fibonacci.append(b)

    # Gere os termos subsequentes até o número desejado de termos
    for _ in range(2, numero_de_termos):
        # Calcule o próximo termo
        c = a + b
        fibonacci.append(c)

        # Atualize os valores de a e b para os próximos cálculos
        a, b = b, c

    return fibonacci

# Solicita ao usuário o número de termos desejado
numero_de_termos = int(input("Digite o número de termos da sequência de Fibonacci desejado: "))

# Chama a função gerar_fibonacci para gerar a sequência
sequencia = gerar_fibonacci(numero_de_termos)

# Exibe a sequência gerada
print("Sequência de Fibonacci:")
for termo in sequencia:
    print(termo, end=" ")