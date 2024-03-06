# Crie uma função que verifica se um número é primo ou não.

def primo(numero):
    # Verifique se o número é menor que 2 (números negativos e 0 não são primos)
    if numero <= 1:
        return False
    # Verifique se o número é divisível por qualquer número de 2 até a raiz quadrada do número
    for i in range(2, int(numero**0.5) + 1):
        if numero % i == 0:
            return False
    # Se não houver nenhum divisor entre 2 e a raiz quadrada do número, o número é primo
    return True

# Exemplo de uso:
numero = int(input("Digite um número: "))
if primo(numero):
    print(numero, "é um número primo.")
else:
    print(numero, "não é um número primo.")