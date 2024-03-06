def terceiro_maior(vetor):
    unicos = list(set(vetor))
    unicos.sort(reverse=True)
    return unicos[2]
vetor = [5, 3, 2, 4, 1, 2]
terceiro_maior_numero = terceiro_maior(vetor)
print(terceiro_maior_numero)
