def selecão_ordenada(vetor, ordem):
    n = len(vetor)
    if ordem == 0:
      for i in range(n):
          indice_minimo = i
          for j in range(i +1, n):
              if vetor[j] < vetor[indice_minimo]:
                  indice_minimo = j
          vetor[i], vetor[indice_minimo] = vetor[indice_minimo], vetor [i]
    else:
        for i in range(n):
          indice_minimo = i
          for j in range(i +1, n):
              if vetor[j] > vetor[indice_minimo]:
                  indice_minimo = j
          vetor[i], vetor[indice_minimo] = vetor[indice_minimo], vetor [i]

vetor =[5,7,4,3]
selecão_ordenada(vetor, 0)
print(vetor)
selecão_ordenada(vetor, 1)    
print(vetor)       