'''
Faça um algoritmo para ler: quantidade atual em estoque, quantidade máxima em
estoque e quantidade mínima em estoque de um produto. Calcular e escrever a
quantidade média ((quantidade média = quantidade máxima + quantidade mínima)/2).
Se a quantidade em estoque for maior ou igual a quantidade média, escrever a
mensagem 'Não efetuar compra', senão escrever a mensagem 'Efetuar compra'.
'''
quantidade_atual_estoque = float(input("Informe a quantidade atual em estoque:"))
quantidade_maxima = float(input("Informe a quantidade máxima em estoque:"))
quantidade_minima = float(input("Informe a quantidade mínima em estoque:"))

quantidade_media = (quantidade_maxima + quantidade_minima)/ 2
print(f"Sua quantidade média é de: {quantidade_media}")
if quantidade_atual_estoque >= quantidade_media:
    print("Não efetuar compra")
else:
    print("Efetuar compra")