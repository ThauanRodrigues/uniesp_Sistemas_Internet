'''
Solicite ao usuário um valor numérico, inteiro ou real, e verifique se ele é maior ou
menor que 10. O programa deve escrever a mensagem correspondente (maior ou
menor) e informar o valor digitado pelo usuário.
'''
# Recebendo o valor
valor = int(input('Digite um valor: '))
if valor >= 10:
    print(f"O valor {valor} é maior que 10.")
else:
    print(f"O valor {valor} é menor que 10.")