class VerificadorPalindromo:
    def __init__(self):
        self.pilha = []

    def limpar_texto(self, texto):
        # Remove espaços em branco e converte para minúsculas
        return ''.join(texto.lower().split())

    def verificar_palindromo(self, texto):
        texto_limpo = self.limpar_texto(texto)

        # Adiciona os caracteres do texto limpo à pilha
        for caractere in texto_limpo:
            self.pilha.append(caractere)

        # Compara os caracteres originais com os invertidos
        for caractere in texto_limpo:
            if caractere != self.pilha.pop():
                return False

        return True

# Exemplo na Pratica
entrada = input("Digite uma palavra ou frase: ")

verificador = VerificadorPalindromo()
resultado = verificador.verificar_palindromo(entrada)

if resultado:
    print(f'A entrada "{entrada}" é um palíndromo.')
else:
    print(f'A entrada "{entrada}" não é um palíndromo.')
