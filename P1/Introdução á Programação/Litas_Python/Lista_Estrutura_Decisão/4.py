'''
Ler as notas da 1a. e 2a. avaliações de um aluno. Calcular a média aritmética simples
e escrever uma mensagem que diga se o aluno foi ou não aprovado (considerar que
nota igual ou maior que 6 o aluno é aprovado). Escrever também a média calculada.
'''
n1 = float(input("Digite a primeira nota:"))
n2 = float(input("Digite a segunda nota:"))
media = (n1 + n2) / 2
print(f" Sua média foi de: {media}")
if media >= 6:
    print("Você foi Aprovado!")
else:
    print("Você foi Reprovado!, estude mais")