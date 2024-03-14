'''
Seja criativo ao desenvolver este programa.
a. Crie uma lista de convidados para um jantar em sua casa, com pelo menos 5 celebridades.
b. Envie um convite para cada uma dessas pessoas. Com a mesma mensagem e nome
personalizado.
c. Sabendo que uma dessas pessoas não poderá ir ao seu jantar, você deverá enviar novos
convites. Imprima o nome das pessoas que não poderão comparecer.
d. Modifique sua lista, substitua os desistentes por novos convidados.
e. Exiba um novo convite para cada pessoa que continua presente em sua lista.
'''
convidados = ["Ellen", "Thayanne", "Beatriz", "Mãe e Pai", "Sogro e Sogra"]

#Enviando a mensagem para os convidados
for convidado in convidados:
    print(f"Olá, {convidado}! Topa sair para jantar hoje?")

# adicionando a desistencia e removendo o convidado.
desistencia = "Beatriz"
print(f"{desistencia} não poderá comparecer ao jantar.")
convidados.remove(desistencia)

# adicionando novos convidados
print(f"Adicionando novo convidado...")
novo_convidado = "Jane"
convidados.append(novo_convidado)
print(novo_convidado)
print(convidados)

# enviando novos convites
for convidado in convidados:
    print(f"Olá, {convidado}! Topa sair para jantar hoje?")
