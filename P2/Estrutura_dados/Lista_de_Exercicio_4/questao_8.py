def mediana(vetor):
    n = len(vetor)
    for i in range(n):
        for j in range(0, n-i-1):
            if vetor[j] > vetor[j+1]:
                vetor[j], vetor[j+1] = vetor[j+1], vetor[j]
    if n % 2 == 0:
        mediana = (vetor[n//2] + vetor[n//2 - 1]) / 2
    else:
        mediana = vetor[n//2]
    return mediana
vetor = [5, 3, 2, 4, 1]
mediana_vetor = mediana(vetor)
print(mediana_vetor)
