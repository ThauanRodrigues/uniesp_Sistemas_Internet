def segundo_menor(vetor):
    unicos = list(set(vetor))
    minimo = float('inf')
    segundo_minimo = float('inf')
    for elemento in unicos:
        if elemento < minimo:
            segundo_minimo = minimo
            minimo = elemento
        elif elemento < segundo_minimo:
            segundo_minimo = elemento
    return segundo_minimo



vetor = [5, 3, 2, 4, 1, 2]
segundo_menor_numero = segundo_menor(vetor)
print(segundo_menor_numero)

