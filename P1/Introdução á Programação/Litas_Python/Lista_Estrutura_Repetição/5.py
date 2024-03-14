'''
Utilizando a lista do exercício anterior, exiba uma saudação ("Olá como vai você"), personalizado
com o nome de cada amigo. A saudação deve ser a mesma, alterando apenas o nome do amigo.
'''

amigos = ["Ellen, Thayanne, Beatriz"]
for amigo in amigos:
    print(f"Olá {amigo.title()}. Eu amo muito o mundo Python.")