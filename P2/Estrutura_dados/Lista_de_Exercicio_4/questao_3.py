def max_min(vetor):
    maximo = vetor[0]
    minimo = vetor[0]
    for elemento in vetor:
        if elemento > maximo:
            maximo = elemento
        else:
            elemento < maximo
            minimo = elemento
    return maximo, minimo

vetor = [5, 7, 4, 3]
maximo, minimo = max_min(vetor)
print(f'O elemento máximo é: {maximo}')
print(f'O elemento mínimo é: {minimo}')
