# Crie uma função que verifica se uma palavra ou frase é um palíndromo (lê-se igual de trás para frente, desconsiderando espaços e pontuação). 
import re

def palidromo(frase):
    # Remove espaços e pontuações
    frase = re.sub(r'[^\w\s]', '', frase)
    # Converte a frase para letras minúsculas
    frase = frase.lower()
    # Verifica se a frase é igual quando lida de trás para frente
    return frase == frase[::-1]

frase1 = "dvd"
frase2 = "lalal"
frase3 = "python"

print(palidromo(frase1)) 
print(palidromo(frase2))
print(palidromo(frase3))