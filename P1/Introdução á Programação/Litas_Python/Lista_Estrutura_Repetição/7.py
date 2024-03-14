'''
Faça um cadastro de usuários com nome, idade e email, utilizando apenas o que você aprendeu até
agora
'''
# Crie um dicionário com o nome e idade dos usuários
usuarios = []

while True:
    nome = input("Digite o nome do usuário: ")
    idade = input("Digite a idade do usuário: ")
    email = input("Digite o email do usuário: ")
    usuario = {'nome': nome, 'idade': idade, 'email': email}
    usuarios.append(usuario)
    print(f"Usuário {nome} cadastrado com sucesso!")
    continuar = input("Deseja cadastrar outro usuário? (s/n) ")
    if continuar == 'n':
        break

print("\nUsuários cadastrados:")
for usuario in usuarios:
    print(f"Nome: {usuario['nome']}, Idade: {usuario['idade']}, Email: {usuario['email']}")