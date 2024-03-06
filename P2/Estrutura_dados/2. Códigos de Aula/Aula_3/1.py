def selecão_ordenada(vetor):
    n = len(vetor)
    for i in range(n):
        indice_minimo = i
        for j in range(i +1, n):
            if vetor[j] < vetor[indice_minimo]:
                indice_minimo = j
        vetor[i], vetor[indice_minimo] = vetor[indice_minimo], vetor [i]

vetor =[5,7,4,3]
selecão_ordenada(vetor)
print(vetor)