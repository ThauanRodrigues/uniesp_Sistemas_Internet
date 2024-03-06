import random

opcoes = ["Pedra", "Papel", "Tesoura"]

print("Escolha uma opção:")
print("1. Pedra")
print("2. Papel")
print("3. Tesoura")
escolha_usuario = int(input("Digite o número da sua escolha (1/2/3): "))

if escolha_usuario < 1 or escolha_usuario > 3:
    print("Escolha inválida. Por favor, escolha 1, 2 ou 3.")
else:
    escolha_usuario -= 1

    escolha_computador = random.randint(0, 2)

    print(f"Você escolheu {opcoes[escolha_usuario]}.")
    print(f"O computador escolheu {opcoes[escolha_computador]}.")

    if escolha_usuario == escolha_computador:
        print("Empate!")
    elif (escolha_usuario == 0 and escolha_computador == 2) or \
         (escolha_usuario == 1 and escolha_computador == 0) or \
         (escolha_usuario == 2 and escolha_computador == 1):
        print("Você venceu!")
    else:
        print("O computador venceu!")