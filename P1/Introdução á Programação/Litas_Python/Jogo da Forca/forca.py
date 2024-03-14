import random

print("Bem vindo ao jogo da Forca!")
nome_jogador = input("Digite o seu nome: ")
print(f"Olá {nome_jogador}, vamos jogar!")

def escolher_palavra(tema):
    nome_arquivo = tema + '.txt'
    with open(nome_arquivo, 'r') as arquivo:
        palavras = arquivo.read().splitlines()
    return random.choice(palavras)

def jogar():
    tema_escolhido = input("Escolha um tema (curso, linguagens ou professores): ")
    palavra = escolher_palavra(tema_escolhido)
    letras_certas = set()
    letras_erradas = set()
    tentativas = 6
    while True:
        print('\n' + '-'*20)
        desenhar_forca(tentativas)
        print('\n')
        imprimir_palavra(palavra, letras_certas)
        print('\nLetras erradas: ', end='')
        imprimir_letras(letras_erradas)
        print('\n' f"Você tem {tentativas} tentativas")
        
        letra = input('\nDigite uma letra: ').lower()
        if letra in letras_certas or letra in letras_erradas:
            print('Você já tentou essa letra. Tente outra.')
        elif letra in palavra:
            letras_certas.add(letra)
            if len(letras_certas) == len(set(palavra)):
                print('\nParabéns! Você venceu!')
                print('A palavra era', palavra)
                break
        else:
            letras_erradas.add(letra)
            tentativas -= 1
            if tentativas == 0:
                print('\nGame over! A palavra era', palavra)
                break

def desenhar_forca(tentativas):
    print(' +----+')
    print(' |    |')
    if tentativas < 6:
        print(' O    |')
    else:
        print('      |')
    if tentativas < 4:
        print('/|\\   |')
    elif tentativas == 4:
        print('/|    |')
    elif tentativas == 5:
        print('/     |')
    else:
        print('      |')
    if tentativas < 2:
        print('/ \\   |')
    elif tentativas == 2:
        print('/     |')
    else:
        print('      |')
    print('      |')
    print('=========')

def imprimir_palavra(palavra, letras_certas):
    for letra in palavra:
        if letra in letras_certas:
            print(letra, end=' ')
        else:
            print('_', end=' ')

def imprimir_letras(letras):
    for letra in letras:
        print(letra, end=' ')

jogar()
