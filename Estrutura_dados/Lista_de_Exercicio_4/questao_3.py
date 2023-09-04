def max_min(vetor):
    maximo = vetor[0]
    minimo = vetor[0]
    for elemento in vetor:
        if elemento > maximo:
            maximo = elemento
        if elemento < minimo:
            minimo = elemento
    return maximo, minimo

vetor = [5, 3, 2, 4, 1]
maximo, minimo = max_min(vetor)
print(f'O elemento máximo é: {maximo}')
print(f'O elemento mínimo é: {minimo}')
