# Crie uma função que calcula o índice de massa corporal (IMC) de uma pessoa com base em sua altura e peso.

def calcular_imc(peso, altura):
    # Verifica se a altura está em metros
    if altura < 1:
        raise ValueError("A altura deve ser fornecida em metros.")

    # Calcula o IMC
    imc = peso / (altura ** 2)
    
    return imc

# Solicita ao usuário que insira seu peso (em kg) e altura (em metros)
peso = float(input("Digite seu peso em kg: "))
altura = float(input("Digite sua altura em metros: "))

# Chama a função calcular_imc para calcular o IMC
imc = calcular_imc(peso, altura)

# Exibe o resultado
print("Seu IMC é:", imc)