'''
Faça um algoritmo para ler: número da conta do cliente, saldo, débito e crédito. Após,
calcular e escrever o saldo atual (saldo atual = saldo - débito + crédito). Também
testar se saldo atual for maior ou igual a zero escrever a mensagem 'Saldo Positivo',
senão escrever a mensagem 'Saldo Negativo'.
'''

numero_conta = int(input("Digite o número da sua conta:"))
saldo = float(input("Digite seu saldo disponivel:"))
debito = float(input("Digite seu debito:"))
credito = float(input("Digite seu crédito:"))

saldo_atual = (saldo - debito + credito)
print(f"Seu saldo atual é de: {saldo_atual}")
if saldo_atual >= 0:
    print("Seu saldo é Positivo!")
else:
    print("Seu saldo é Negativo!")