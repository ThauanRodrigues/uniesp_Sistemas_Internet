def selection(val):
    n = len(val)
    for i in range(n):
        min_index = i
        #comparando todas as cartas para encontrar a menor.
        for j in range(i+1, n):
            if val[j] < val[min_index]:
                min_index = j
        val[i], val[min_index] = val[min_index], val[i]
    return val

vetor = [5, 3, 2, 4, 1]
vetor_ordenado = selection(vetor)
print(vetor_ordenado)
