# Escreva um programa que recebe cinco notas de um aluno e calcula a média. Em seguida, exiba se o aluno foi aprovado (média maior ou igual a 7) ou reprovado (média menor que 7).

soma_notas = 0

# Solicitar as notas ao usuario.
notas = [float(input(f"Digite a {i+1}ª nota: ")) for i in range(5)]
# calculo das medias
media = sum(notas) / 5
# ver se o aluno foi aprovado ou reprovado
if media >= 7:
    print(f"Média: {media:.2f} - Aprovado!")
else:
    print(f"Média: {media:.2f} - Reprovado.")