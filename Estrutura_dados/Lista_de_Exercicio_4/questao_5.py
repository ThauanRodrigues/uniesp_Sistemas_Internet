def remover_duplicatas(vetor):
    unicos = []
    for elemento in vetor:
        if elemento not in unicos:
            unicos.append(elemento)
    return unicos
vetor = [5, 3, 2, 4, 1, 2, 3]
vetor_sem_duplicatas = remover_duplicatas(vetor)
print(vetor_sem_duplicatas)
