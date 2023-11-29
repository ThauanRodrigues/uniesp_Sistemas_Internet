import estruturafila as estfila
# Fazer a leitura do vetor abaixo
V1=[20,30,25,18,60,40,65,85]
# Apresentar apresentar o primeiro e o último da fila para a seguinte situação
# 1. Após a leitura do vetor
# 2. desenfileirar() e desenfileirar()
# 3. desenfileirar()
# 4. enfileirar(30), enfileirar(40) e enfileirar (67)

filan = estfila.fila(6)
filap = estfila.fila(6)
filapp = estfila.fila(6)

for i in V1:
    if i<60:
        filan.enfileirar(i)
    elif i<80:
        filap.enfileirar(i)
    else:
        filapp.enfileirar(i)

print('Fila atendimento Normal..: ')
filan.visualizar()
print('Fila atendimento Prioritaria..: ')
filap.visualizar()
print('Fila atendimento Prioritaria da Prioritaria..: ')
filapp.visualizar()
