import estruturafila as estfila
# Fazer a leitura do vetor abaixo
V1=[20,30,25,18,60,40,65,85]

filapaciente = estfila.fila(8)

# Enfileirando apenas os prioritários dos prioritários
for i in V1:
    if i>=80:
        filapaciente.enfileirar(i)

# Enfileirando apenas os prioritários
for i in V1:
    if (60<=i<80):
        filapaciente.enfileirar(i)

# Enfileirando apenas os prioritários
for i in V1:
    if (i<60):
        filapaciente.enfileirar(i)

print(V1)
filapaciente.visualizar()

