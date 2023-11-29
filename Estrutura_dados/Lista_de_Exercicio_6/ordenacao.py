import time
import random

def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

def select_sort(arr):
    n = len(arr)
    for i in range(n):
        min_index = i
        for j in range(i+1, n):
            if arr[j] < arr[min_index]:
                min_index = j
        arr[i], arr[min_index] = arr[min_index], arr[i]
    return arr

def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)

def medir_tempo(algoritmo, vetor):
    inicio = time.time()
    resultado = algoritmo(vetor.copy())
    fim = time.time()
    tempo_execucao = fim - inicio
    return tempo_execucao

# Tamanhos dos vetores
tamanhos = [1000, 10000, 100000]

# Resultados em uma tabela
print(f"{'Tamanho do Vetor':<15}{'Bubble Sort':<15}{'Select Sort':<15}{'Quick Sort':<15}")
for tamanho in tamanhos:
    vetor = [random.randint(1, 1000) for _ in range(tamanho)]
    tempo_bubble = medir_tempo(bubble_sort, vetor)
    tempo_select = medir_tempo(select_sort, vetor)
    tempo_quick = medir_tempo(quick_sort, vetor)
    print(f"{tamanho:<15}{tempo_bubble:<15.6f}{tempo_select:<15.6f}{tempo_quick:<15.6f}")