# Obtenha dados de altura e o genero (H ou M) de 15 pessoas e apresente os seguintes resultados:
# - A maior e a menor altura do grupo;
# - A media de altura dos homens;
# - O numero de mulheres;

alturas = []
generos = []

for i in range(15):
    altura = float(input(f"Digite a altura da pessoa {i+1}: "))
    genero = input(f"Digite o gênero da pessoa {i+1} (H para homem, M para mulher): ").upper()
    alturas.append(altura)
    generos.append(genero)
maior_altura = max(alturas)
menor_altura = min(alturas)
alturas_homens = [altura for altura, genero in zip(alturas, generos) if genero == 'H']
med_altura_homens = sum(alturas_homens) / len(alturas_homens) if alturas_homens else 0
# contagem numero de mulheres
numero_mulheres = generos.count('M')
# Impressao das informações.
print(f"A maior altura do grupo é: {maior_altura:.2f}")
print(f"A menor altura do grupo é: {menor_altura:.2f}")
print(f"A média de altura dos homens é: {med_altura_homens:.2f}")
print(f"O número de mulheres é: {numero_mulheres}")