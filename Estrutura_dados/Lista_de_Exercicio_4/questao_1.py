def selection_sort(vetor):
    n = len(vetor)
    for i in range(n):
        min_index = i
        for j in range(i+1, n):
            if vetor[j] < vetor[min_index]:
                min_index = j
        vetor[i], vetor[min_index] = vetor[min_index], vetor[i]
    return vetor

vetor = [5, 3, 2, 4, 1]
vetor_ordenado = selection_sort(vetor)
print(vetor_ordenado)
