class Livro:
    def __init__(self, titulo, autor):
        self.titulo = titulo
        self.autor = autor

    def detalhes(self):
        return f"Titulo: {self.titulo}, autor: {self.autor}"

livro1 = Livro("Quem Pensa Enriquece", "Napoleon Hill")
detalhes_livro1 = livro1.detalhes()
print (detalhes_livro1)

livro2 = Livro ("Pai Rico, Pai Pobre", "Robert T. Kiyosaki")
detalhes_livro2 = livro2.detalhes()
print(detalhes_livro2)
        