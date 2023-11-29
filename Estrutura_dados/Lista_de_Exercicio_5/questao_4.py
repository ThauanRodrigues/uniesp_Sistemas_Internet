class ListaDeTarefas:
    def __init__(self):
        self.fila_tarefas = []
      
    def adicionar_tarefa(self, tarefa):
        self.fila_tarefas += [tarefa]
        print(f"Tarefa '{tarefa}' adicionada à lista.")

    def concluir_tarefas(self):
        if not self.fila_tarefas:
            print("Não há tarefas para serem concluídas.")
        else:
            print("\nConcluindo tarefas:")
            for i in range(len(self.fila_tarefas)):
                tarefa = self.fila_tarefas[i]
                print(f"Tarefa concluída: {tarefa}")
            self.fila_tarefas = []  # Limpando a lista

# Usando na Prática
lista_tarefas = ListaDeTarefas()

lista_tarefas.adicionar_tarefa("Ler um livro")
lista_tarefas.adicionar_tarefa("Fazer exercícios")
lista_tarefas.adicionar_tarefa("Escrever relatório")

lista_tarefas.concluir_tarefas()