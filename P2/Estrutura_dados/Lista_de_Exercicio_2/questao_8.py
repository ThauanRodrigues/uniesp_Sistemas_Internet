class Aluno:
    def __init__(self, nome, nota1, nota2):
        self.nome = nome
        self.nota1 = nota1
        self.nota2 = nota2

    def calcular_media(self):
        media = (self.nota1 + self.nota2) / 2
        return f"A média final é de: {media}"
    

aluno = Aluno("Thauan", 8,6)
print(aluno.calcular_media())
    