def ordenar_decrescente(vetor):
    n = len(vetor)
    for i in range(n):
        for j in range(0, n-i-1):
            if vetor[j] < vetor[j+1]:
                vetor[j], vetor[j+1] = vetor[j+1], vetor[j]
    return vetor

def contar_pares_impares(vetor):
    pares = 0
    impares = 0
    for elemento in vetor:
        if elemento % 2 == 0:
            pares += 1
        else:
            impares += 1
    return pares, impares

vetor = [5, 3, 2, 4, 1]
vetor_ordenado = ordenar_decrescente(vetor)
print(f'Vetor ordenado: {vetor_ordenado}')
pares, impares = contar_pares_impares(vetor_ordenado)
print(f'Números pares: {pares}')
print(f'Números ímpares: {impares}')
