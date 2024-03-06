def ordenar(vetor, crescente=True):
    n = len(vetor)
    for i in range(n):
        for j in range(0, n-i-1):
            if (vetor[j] > vetor[j+1] and crescente) or (vetor[j] < vetor[j+1] and not crescente):
                vetor[j], vetor[j+1] = vetor[j+1], vetor[j]
    return vetor


vetor = [5, 3, 2, 4, 1]
vetor_ordenado_crescente = ordenar(vetor)
print(vetor_ordenado_crescente)
vetor_ordenado_decrescente = ordenar(vetor, crescente=False)
print(vetor_ordenado_decrescente)
